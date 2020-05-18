//
//  SSRSAModule.h
//  SanCell
//
//  Created by Owen on 2019/5/29.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SSRSAModule : NSObject

/***/
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;

+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;

+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;

+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;

+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;

@end

NS_ASSUME_NONNULL_END
