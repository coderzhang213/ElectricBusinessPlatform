//
//  NSString+SSExpand.h
//  SanCell
//
//  Created by Owen on 2019/5/31.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (SSExpand)

- (NSString *)md5;

/**rsa加密(顺序填写)*/
+ (NSString *)getEncryptStringfrom:(NSArray*)objects;

- (BOOL) checkPhoneNumber;

- (BOOL) checkPassWord;

- (CGSize) sizeWithFontCompatible:(UIFont *) font;

+ (NSString *) getCurrentImgeName;

+ (NSArray *)getLinesArrayOfStringInLabel:(NSString *)string font:(UIFont *)font andLableWidth:(CGFloat)lableWidth;

+ (NSString*)dictionaryToJson:(NSDictionary*)dic;

+ (NSString *)changeAsset:(NSNumber *)amountNum;//大于1w

+ (NSString *)changeAssetOfHundredThousand:(NSNumber *)amountNum;//大于10w

+ (BOOL)isInputRuleOfName:(NSString *)str;

+ (BOOL)isInputRuleOfCarID:(NSString *)str;

+ (BOOL) stringContainsSpecial:(NSString *) string;

+ (BOOL)stringContainsEmoji:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
