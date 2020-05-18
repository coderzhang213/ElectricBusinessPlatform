//
//  SSShareManager.m
//  SanCell
//
//  Created by Owen on 2019/5/8.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSShareManager.h"


@implementation SSShareManager

+ (void) SSSharePlatform:(ShareType) type shareImage:(NSString *) imageUrl
              shareTitle:(NSString *) title
               shareDesc:(NSString *) desc
                shareUrl:(NSString *) shareUrl
               currentVc:(id) vc
              completion:(ShareRequestCompletion) completion{
    
    //创建分享消息对象
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    
    //创建网页内容对象
    NSString* thumbURL = imageUrl;
    UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:title
                                                                             descr:desc
                                                                         thumImage:thumbURL];
    //设置网页地址
    shareObject.webpageUrl = shareUrl;
    
    //分享消息对象设置分享内容对象
    messageObject.shareObject = shareObject;

    
    if (type == Type_WechatSession) {
        
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatSession messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];
        
    }else if (type == Type_WechatTimeLine){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatTimeLine messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];

        
        
    }else if (type == Type_Sina){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Sina messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];

        
    }else if (type == Type_QQ){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_QQ messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{
            
            }
        }];

        
    }else if (type == Type_Qzone){
        
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Qzone messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                
            }else{
                
            }
        }];
    }
}

+ (void) SSNewSharePlatform:(ShareType) type shareImage:(UIImage *) imageUrl
shareTitle:(NSString *) title
 shareDesc:(NSString *) desc
  shareUrl:(NSString *) shareUrl
 currentVc:(id) vc
                 completion:(ShareRequestCompletion) completion{
    
    //创建分享消息对象
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    
    //创建网页内容对象
    UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:title
                                                                             descr:desc
                                                                         thumImage:imageUrl];
    //设置网页地址
    shareObject.webpageUrl = shareUrl;
    
    //分享消息对象设置分享内容对象
    messageObject.shareObject = shareObject;

    
    if (type == Type_WechatSession) {
        
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatSession messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];
        
    }else if (type == Type_WechatTimeLine){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatTimeLine messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];

        
        
    }else if (type == Type_Sina){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Sina messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];

        
    }else if (type == Type_QQ){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_QQ messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{
            
            }
        }];

        
    }else if (type == Type_Qzone){
        
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Qzone messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                
            }else{
                
            }
        }];
    }
}

+ (void) SSVideoSharePlatform:(ShareType) type shareImage:(UIImage *) imageUrl
                   shareTitle:(NSString *) title
                    shareDesc:(NSString *) desc
                     shareUrl:(NSString *) shareUrl
                    sharePath:(NSString *) sharePath
                    currentVc:(id) vc
                   completion:(ShareRequestCompletion) completion{
    
    //创建分享消息对象
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];

    
    if (type == Type_WechatSession) {
        
        //创建网页内容对象
        UMShareMiniProgramObject *shareObject = [UMShareMiniProgramObject shareObjectWithTitle:title descr:desc thumImage:imageUrl];
        //设置网页地址
        shareObject.webpageUrl = shareUrl;
        
        shareObject.path = sharePath;
        
        shareObject.userName = @"gh_31c814cae51d";
        
        shareObject.miniProgramType = UShareWXMiniProgramTypeRelease;
        
        //分享消息对象设置分享内容对象
        messageObject.shareObject = shareObject;
        
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatSession messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];
        
    }else{
        
        //创建网页内容对象
        UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:title
                                                                                 descr:desc
                                                                             thumImage:imageUrl];
        //设置网页地址
        shareObject.webpageUrl = shareUrl;
        
        //分享消息对象设置分享内容对象
        messageObject.shareObject = shareObject;
        
        if (type == Type_WechatTimeLine){
            
            //调用分享接口
            [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatTimeLine messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
                if (error) {
                    
                    completion(data,error);
                    UMSocialLogInfo(@"************Share fail with error %@*********",error);
                }else{

                }
            }];

            
            
        }else if (type == Type_Sina){
            
            //调用分享接口
            [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Sina messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
                if (error) {
                    
                    completion(data,error);
                    UMSocialLogInfo(@"************Share fail with error %@*********",error);
                }else{

                }
            }];

            
        }else if (type == Type_QQ){
            
            //调用分享接口
            [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_QQ messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
                if (error) {
                    
                    completion(data,error);
                    UMSocialLogInfo(@"************Share fail with error %@*********",error);
                }else{
                
                }
            }];

            
        }else if (type == Type_Qzone){
            
            
            //调用分享接口
            [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Qzone messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
                if (error) {
                    
                    completion(data,error);
                    
                }else{
                    
                }
            }];
        }

    }
    
}

+ (void) SSSharePlatform:(ShareType) type shareImage:(UIImage *) image
 currentVc:(id) vc
              completion:(ShareRequestCompletion) completion{
    
    
    //创建分享消息对象
    UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
    
    //创建网页内容对象
    UMShareImageObject *shareObject = [[UMShareImageObject alloc] init];
    //设置网页地址
    shareObject.shareImage = image;
    
    //分享消息对象设置分享内容对象
    messageObject.shareObject = shareObject;

    
    if (type == Type_WechatSession) {
        
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatSession messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];
        
    }else if (type == Type_WechatTimeLine){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_WechatTimeLine messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];

        
        
    }else if (type == Type_Sina){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Sina messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{

            }
        }];

        
    }else if (type == Type_QQ){
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_QQ messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                UMSocialLogInfo(@"************Share fail with error %@*********",error);
            }else{
            
            }
        }];

        
    }else if (type == Type_Qzone){
        
        
        //调用分享接口
        [[UMSocialManager defaultManager] shareToPlatform:UMSocialPlatformType_Qzone messageObject:messageObject currentViewController:vc completion:^(id data, NSError *error) {
            if (error) {
                
                completion(data,error);
                
            }else{
                
            }
        }];
    }
}
@end
