//
//  NSString+SSExpand.m
//  SanCell
//
//  Created by Owen on 2019/5/31.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "NSString+SSExpand.h"
#import <CommonCrypto/CommonDigest.h>
#import "SSRSAModule.h"
#import <CoreText/CoreText.h>

@implementation NSString (SSExpand)

- (NSString *)md5
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_MD5_DIGEST_LENGTH];

    CC_MD5(data.bytes, [NSNumber numberWithInteger:data.length].intValue, digest);

    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];

    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }

    return output;
}

/**获取字符串font下的CGsize*/
- (CGSize)sizeWithFontCompatible:(UIFont *)font {
    if ([self respondsToSelector:@selector(sizeWithAttributes:)] == YES) {
        NSDictionary *dictionaryAttributes = @{ NSFontAttributeName: font };
        CGSize stringSize = [self sizeWithAttributes:dictionaryAttributes];
        return CGSizeMake(ceil(stringSize.width), ceil(stringSize.height));
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        return [self sizeWithFont:font];
#pragma clang diagnostic pop
    }
}

/**rsa加密*/
+ (NSString *)getEncryptStringfrom:(NSArray *)objects;
{
    NSMutableString *string = [NSMutableString string];

    for (int i = 0; i < objects.count; i++) {
        [string appendFormat:@"%@", objects[i]];
    }

    NSString *targetString = [SSRSAModule encryptString:string publicKey:NewPUBKEY];

    return targetString;
}

- (BOOL)checkPhoneNumber {
    NSString *regex = [[DataManager lightData] readMobileRule];

    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [pred evaluateWithObject:self];
}

- (BOOL)checkPassWord {
    NSString *regex = [[DataManager lightData] readPasswordRule];

    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];

    return [pred evaluateWithObject:self];
}

+ (NSString *)getCurrentImgeName {
    if (WIDTH == 414 && HEIGHT == 896) {
        return IXR;
    } else if (WIDTH == 375 && HEIGHT == 812) {
        return IXS;
    } else {
        return I7;
    }
}

+ (NSArray *)getLinesArrayOfStringInLabel:(NSString *)string font:(UIFont *)font andLableWidth:(CGFloat)lableWidth {
    CTFontRef myFont = CTFontCreateWithName((CFStringRef)([font fontName]), [font pointSize], NULL);
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:string];
    [attStr addAttribute:(NSString *)kCTFontAttributeName value:(__bridge id)myFont range:NSMakeRange(0, attStr.length)];
    CFRelease(myFont);
    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attStr);
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0, 0, lableWidth, 100000));
    CTFrameRef frame = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), path, NULL);
    NSArray *lines = (NSArray *)CTFrameGetLines(frame);
    NSMutableArray *linesArray = [[NSMutableArray alloc]init];
    for (id line in lines) {
        CTLineRef lineRef = (__bridge CTLineRef)line;
        CFRange lineRange = CTLineGetStringRange(lineRef);
        NSRange range = NSMakeRange(lineRange.location, lineRange.length);
        NSString *lineString = [string substringWithRange:range];
        CFAttributedStringSetAttribute((CFMutableAttributedStringRef)attStr, lineRange, kCTKernAttributeName, (CFTypeRef)([NSNumber numberWithFloat:0.0]));
        CFAttributedStringSetAttribute((CFMutableAttributedStringRef)attStr, lineRange, kCTKernAttributeName, (CFTypeRef)([NSNumber numberWithInt:0.0]));
        [linesArray addObject:lineString];
    }

    CGPathRelease(path);
    CFRelease(frame);
    CFRelease(frameSetter);
    return (NSArray *)linesArray;
}

+ (NSString *)dictionaryToJson:(NSDictionary *)dic {
    NSError *parseError = nil;

    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];

    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

+ (NSString *)changeAsset:(NSNumber *)amountNum {
    if ([amountNum intValue] > 10000) {
        return [NSString stringWithFormat:@"%0.1fw", (CGFloat)[amountNum intValue] / 10000];
    } else {
        return [NSString stringWithFormat:@"%d", [amountNum intValue]];
    }
}

+ (NSString *)changeAssetOfHundredThousand:(NSNumber *)amountNum {
    if ([amountNum intValue] > 100000) {
        return [NSString stringWithFormat:@"%0.1fw", (CGFloat)[amountNum intValue] / 10000];
    } else {
        return [NSString stringWithFormat:@"%d", [amountNum intValue]];
    }
}

+ (BOOL)isInputRuleOfName:(NSString *)str {
    //NSString *pattern = @"^[a-zA-Z\u4E00-\u9FA5\\d]*$";
    NSString *pattern = @"^[a-zA-Z\u4E00-\u9FA5\\d]*$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:str];
    return isMatch;
}

+ (BOOL)isInputRuleOfCarID:(NSString *)str {
    //NSString *pattern = @"^[a-zA-Z\u4E00-\u9FA5\\d]*$";
    NSString *pattern = @"^[➋➌➍➎➏➐➑➒a-zA-Z]*$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:str];
    return isMatch;
}

+ (BOOL)stringContainsSpecial:(NSString *)string {
    NSString *tempString = @"~,￥,#,&,*,<,>,《,》,(,),[,],{,},【,】,^,@,/,￡,¤,|,§,¨,「,」,『,』,￠,￢,￣,（,）,——,+,|,$,_,€,¥,？,/,|,，,。,!";
    NSArray *specialStringArray = [tempString componentsSeparatedByString:@","];

    int num = 0;

    for (int i = 0; i < specialStringArray.count; i++) {
        //判断字符串中是否含有特殊符号
        NSLog(@"___%d", i);
        if ([string rangeOfString:specialStringArray[i]].location != NSNotFound) {
            NSLog(@"___==%d", num);
            num++;
        }
    }

    if (num == 0) {
        return NO;
    } else {
        return YES;
    }
}

/**
 *  判断字符串中是否存在emoji
 * @param string 字符串
 * @return YES(含有表情)
 */
+ (BOOL)stringContainsEmoji:(NSString *)string {
    __block BOOL returnValue = NO;

    [string enumerateSubstringsInRange:NSMakeRange(0, [string length]) options:NSStringEnumerationByComposedCharacterSequences usingBlock:
     ^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        const unichar hs = [substring characterAtIndex:0];
        // surrogate pair
        if (0xd800 <= hs && hs <= 0xdbff) {
            if (substring.length > 1) {
                const unichar ls = [substring characterAtIndex:1];
                const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                if (0x1d000 <= uc && uc <= 0x1f77f) {
                    returnValue = YES;
                }
            }
        } else if (substring.length > 1) {
            const unichar ls = [substring characterAtIndex:1];
            if (ls == 0x20e3) {
                returnValue = YES;
            }
        } else {
            // non surrogate
            if (0x2100 <= hs && hs <= 0x27ff) {
                returnValue = YES;
            } else if (0x2B05 <= hs && hs <= 0x2b07) {
                returnValue = YES;
            } else if (0x2934 <= hs && hs <= 0x2935) {
                returnValue = YES;
            } else if (0x3297 <= hs && hs <= 0x3299) {
                returnValue = YES;
            } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                returnValue = YES;
            }
        }
    }];

    return returnValue;
}

@end
