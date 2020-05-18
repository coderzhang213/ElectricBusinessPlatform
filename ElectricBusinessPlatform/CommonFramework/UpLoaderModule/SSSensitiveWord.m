//
//  SSSensitiveWord.m
//  SanCell
//
//  Created by scz on 2019/12/16.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSSensitiveWord.h"

#define EXIST @"isExists"
@interface SSSensitiveWord ()

@property (nonatomic, strong) NSMutableDictionary *rootDictionary;

@property (nonatomic, strong) NSMutableArray *rootArray;

@property (nonatomic, assign) BOOL isFilterClose;

@end

@implementation SSSensitiveWord

static SSSensitiveWord *instance;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        //加载本地文件
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SensitiveWord" ofType:@"txt"];
        [self initFilter:filePath];
    }
    return self;
}

- (void)initFilter:(NSString *)filepath {
    self.rootDictionary = [NSMutableDictionary dictionary];
    NSString *fileString = [[NSString alloc] initWithContentsOfFile:filepath encoding:NSUTF8StringEncoding error:nil];
    
    [self.rootArray removeAllObjects];
    [self.rootArray addObjectsFromArray:[fileString componentsSeparatedByString:@"|"]];
    for (NSString *string in self.rootArray) {
        //插入字符，构造节点
        [self insertWords:string];
    }
}

- (void)insertWords:(NSString *)words {
    NSMutableDictionary *node = self.rootDictionary;
    for (int i = 0; i < words.length; i++) {
        NSString *word = [words substringWithRange:NSMakeRange(i, 1)];
        if (node[word] == nil) {
            node[word] = [NSMutableDictionary dictionary];
        }
        node = node[word];
    }
    //敏感词最后一个字符标识
    node[EXIST] = [NSNumber numberWithInt:1];
}

///替换敏感词
- (NSString *)filter:(NSString *)str {
    if (self.isFilterClose || !self.rootDictionary) {
        return str;
    }
    NSMutableString *resultString = resultString = [str mutableCopy];
    for (int i = 0; i < str.length; i++) {
        NSString *subString = [str substringFromIndex:i];
        NSMutableDictionary *node = [self.rootDictionary mutableCopy];
        int num = 0;
        for (int j = 0; j < subString.length; j++) {
            NSString *word = [subString substringWithRange:NSMakeRange(j, 1)];
            if (node[word] == nil) {
                break;
            }else {
                num++;
                node = node[word];
            }
            //敏感词匹配成功
            if ([node[EXIST] integerValue] == 1) {
                NSMutableString *sysmbolString = [NSMutableString string];
                for (int k = 0; k < num; k++) {
                    [sysmbolString appendString:@"*"];
                }
                [resultString replaceCharactersInRange:NSMakeRange(i, num) withString:sysmbolString];
                i += j;
                break;
            }
        }
    }
    return resultString;
}

///判断是否有敏感词
- (BOOL)hasSensitiveWord:(NSString *)str {
    if (self.isFilterClose || !self.rootDictionary) {
        return NO;
    }
    
//    NSMutableString *result = result = [str mutableCopy];
    
    for (int i = 0; i < str.length; i ++) {
        NSString *subString = [str substringFromIndex:i];
        NSMutableDictionary *node = [self.rootDictionary mutableCopy] ;
        int num = 0;
        
        for (int j = 0; j < subString.length; j ++) {
            NSString *word = [subString substringWithRange:NSMakeRange(j, 1)];
            
            if (node[word] == nil) {
                break;
            }else{
                num ++;
                node = node[word];
            }
            
            //敏感词匹配成功
            if ([node[EXIST] integerValue] == 1) {
                return YES;
            }
        }
    }

    return NO;
}

- (NSMutableArray *)rootArray {
    if (!_rootArray) {
        _rootArray = [NSMutableArray array];
    }
    return _rootArray;
}

@end
