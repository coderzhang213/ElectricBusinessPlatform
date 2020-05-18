//
//  SSShareManager.h
//  SanCell
//
//  Created by Owen on 2019/5/8.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^ShareRequestCompletion)(id result,NSError *error);

typedef enum{
    
    Type_Sina               = 0,
    Type_WechatSession      = 1, 
    Type_WechatTimeLine     = 2,
    Type_QQ                 = 4,
    Type_Qzone              = 5,
} ShareType;

@interface SSShareManager : NSObject


+ (void) SSSharePlatform:(ShareType) type shareImage:(NSString *) imageUrl
              shareTitle:(NSString *) title
               shareDesc:(NSString *) desc
                shareUrl:(NSString *) shareUrl
               currentVc:(id) vc
              completion:(ShareRequestCompletion) completion;

+ (void) SSNewSharePlatform:(ShareType) type shareImage:(UIImage *) imageUrl
                 shareTitle:(NSString *) title
                  shareDesc:(NSString *) desc
                   shareUrl:(NSString *) shareUrl
                  currentVc:(id) vc
                 completion:(ShareRequestCompletion) completion;

+ (void) SSVideoSharePlatform:(ShareType) type shareImage:(UIImage *) imageUrl
                   shareTitle:(NSString *) title
                    shareDesc:(NSString *) desc
                     shareUrl:(NSString *) shareUrl
                     sharePath:(NSString *) sharePath
                    currentVc:(id) vc
                   completion:(ShareRequestCompletion) completion;



+ (void) SSSharePlatform:(ShareType) type shareImage:(UIImage *) image
 currentVc:(id) vc
completion:(ShareRequestCompletion) completion;

@end

NS_ASSUME_NONNULL_END
