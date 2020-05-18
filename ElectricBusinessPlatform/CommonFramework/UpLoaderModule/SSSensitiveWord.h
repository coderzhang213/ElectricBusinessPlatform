//
//  SSSensitiveWord.h
//  SanCell
//
//  Created by scz on 2019/12/16.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 敏感词检测类
@interface SSSensitiveWord : NSObject

+ (instancetype)shareInstance;

/// 加载本地敏感词库
/// @param filepath 敏感词库文件路径
- (void)initFilter:(NSString *)filepath;

/// 替换敏感词
/// @param str 要替换的敏感词
- (NSString *)filter:(NSString *)str;

/// 敏感词检测
/// @param str 要检测的字符串
- (BOOL)hasSensitiveWord:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
