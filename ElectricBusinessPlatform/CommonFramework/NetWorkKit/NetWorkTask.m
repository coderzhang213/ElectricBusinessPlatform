//
//  NetWorkTask.m
//  CAMELLIAE
//
//  Created by 张越 on 16/3/18.
//  Copyright © 2016年 张越. All rights reserved.
//

#import "NetWorkTask.h"
#import "NetConfig.h"
#import "AFAppDotNetAPIClient.h"
//#import "UIImageView+WebCache.h"
//#import "NSString+CMLExspand.h"
//#import "SDImageCache.h"
//#import "SDWebImageManager.h"

@implementation NetWorkTask

/**获得当前网络状态*/
+ (NSString *)getCurrentNetType {
    UIApplication *app = [UIApplication sharedApplication];
    NSArray *subviews = [[[app valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"] subviews];
    NSString *state = [[NSString alloc] init];
    int netType = 0;
    for (id view in subviews) {
        if ([view isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
            //获取到状态栏
            netType = [[view valueForKeyPath:@"dataNetworkType"] intValue];
            switch (netType) {
                case 0:
                    state = @"无网络";
                    break;
                case 1:
                    state = @"2G";
                    break;
                case 2:
                    state = @"3G";
                    break;
                case 3:
                    state = @"4G";
                    break;
                case 5:
                    state = @"WIFI";
                    break;
                default:
                    break;
            }
        }
    }
    return state;
}

+ (BOOL)getRequestWithApiName:(NSString *)apiName
                        param:(NSMutableDictionary *)paramDictionary
                     delegate:(NetWorkDelegate *)netWorkDelegate
{
    NSString *requestString = [NSString stringWithFormat:@"%@%@", NetWorkApiDomain, apiName];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];

    /***************/
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
    [securityPolicy setAllowInvalidCertificates:YES];
    [securityPolicy setValidatesDomainName:YES];
    [manager setSecurityPolicy:securityPolicy];

    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",
                                                         @"text/json",
                                                         @"text/javascript",
                                                         @"text/html",
                                                         @"text/plain",
                                                         nil];
    /*******************/
    
    [manager GET:requestString parameters:paramDictionary headers:nil progress:^(NSProgress *_Nonnull downloadProgress) {
        NSLog(@"%@ Network Request", apiName);
    } success:^(NSURLSessionDataTask *_Nonnull task, id _Nullable responseObject) {
        if ([netWorkDelegate.delegate respondsToSelector:@selector(requestSucceedBack:withApiName:)]) {
            [netWorkDelegate.delegate requestSucceedBack:responseObject withApiName:apiName];
        }
    } failure:^(NSURLSessionDataTask *_Nullable task, NSError *_Nonnull error) {
        if ([netWorkDelegate.delegate respondsToSelector:@selector(requestFailBack:withApiName:)]) {
            [netWorkDelegate.delegate requestFailBack:error withApiName:apiName];
        }
    }];

    return YES;
}

+ (NSURLSessionDataTask *)postResquestWithApiName:(NSString *)apiName
                                          paraDic:(NSDictionary *)paraDic
                                         delegate:(NetWorkDelegate *)netWorkDelegate {
    NSString *requestString = [NSString stringWithFormat:@"%@%@", NetWorkApiDomain, apiName];

//    AFHTTPSessionManager *manager = [AFAppDotNetAPIClient sharedClient];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];

    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
    [securityPolicy setAllowInvalidCertificates:YES];
    [securityPolicy setValidatesDomainName:NO];
    [manager setSecurityPolicy:securityPolicy];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",
                                                         @"text/json",
                                                         @"text/javascript",
                                                         @"text/html",
                                                         @"text/plain",
                                                         nil];

    [manager.requestSerializer setValue:[AppGroup appVersion] forHTTPHeaderField:@"version"];
    [manager.requestSerializer setValue:[NSString stringWithFormat:@"%@", [NSNumber numberWithInt:2]] forHTTPHeaderField:@"clientId"];

    __weak typeof(manager) weakManager = manager;
    NSURLSessionDataTask *task = [manager POST:requestString parameters:paraDic headers:nil progress:^(NSProgress *_Nonnull uploadProgress) {
        NSLog(@"%@ Network Request", apiName);
    } success:^(NSURLSessionDataTask *_Nonnull task, id _Nullable responseObject) {
        if ([netWorkDelegate.delegate respondsToSelector:@selector(requestSucceedBack:withApiName:)]) {
            BaseResultObj *obj = [BaseResultObj getBaseObjFrom:responseObject];

            if ([obj.retCode intValue] == 100216 || [obj.retCode intValue] == 100101) {
                [[DataManager lightData] removeSkey];

                [[DataManager lightData] removeGravatar];
                [[DataManager lightData] removeMemberLevel];
                [[DataManager lightData] removeMobile];
                [[DataManager lightData] removeNickName];
                [[DataManager lightData] removeUserId];
                [[DataManager lightData] removeBirthday];
                [[DataManager lightData] removeGender];
                [[DataManager lightData] removeGravatar];

                [SVProgressHUD showErrorWithStatus:retMsg0];
                [VCManger mainVC].viewControllers = @[];
//                SSLoginNodeController *vc = [[SSLoginNodeController alloc] init];
//                [[VCManger mainVC] pushVC:vc animate:NO];
//                [[VCManger homeVC] replaceSetting:0];
//                [[VCManger secondHomeVC] replaceSecondSetting:0];
            } else {
                if ([obj.retCode intValue] != 0) {
                    NSLog(@"&&&&&&&&&&&&&&&&&%@****%@", apiName, paraDic);
                }
                [netWorkDelegate.delegate requestSucceedBack:responseObject withApiName:apiName];
            }
        }
//        [weakManager invalidateSessionCancelingTasks:YES resetSession:YES];
    } failure:^(NSURLSessionDataTask *_Nullable task, NSError *_Nonnull error) {
        NSLog(@"requestFailBack=================%@***%@\n====error:%@", apiName, paraDic, error);

        ReachabilityStatus status = [GLobalRealReachability currentReachabilityStatus];

        if (status == RealStatusNotReachable || error.code == -1001) {
            if ([netWorkDelegate.delegate respondsToSelector:@selector(requestFailBack:withApiName:)]) {
                [netWorkDelegate.delegate requestFailBack:error withApiName:apiName];
            }
        } else {
            if ([apiName isEqualToString:SSLiveOnlineUserNumber]) {
                NSLog(@"在线人数接口:requestFailBack=================%@***%@\n====error:%@", apiName, paraDic, error);
            } else {
                NSLog(@"=======服务器宕机======\n%@***%@", error, apiName);
                if ([NetWorkApiDomain isEqualToString:@"http://testmapi.sancell.top/"]) {
                    [SVProgressHUD dismiss];
//                    SSNetworkStatusView *serverView = [[SSNetworkStatusView alloc] init];
//                    [[UIApplication sharedApplication].keyWindow addSubview:serverView];
//                    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:serverView];
                } else {
//                    SSNetworkStatusView *serverView = [[SSNetworkStatusView alloc] init];
//                    [[UIApplication sharedApplication].keyWindow addSubview:serverView];
//                    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:serverView];
                }
            }
        }
//        [weakManager invalidateSessionCancelingTasks:YES resetSession:YES];
    }];

    return task;
}

+ (void)setImageView:(UIImageView *)imageView WithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder {
    [imageView sd_setImageWithURL:url placeholderImage:placeholder options:SDWebImageRetryFailed];
}

+ (void)setAnimatedImageView:(YYAnimatedImageView *)animatedImageView
               withURLString:(NSString *)url
            placeholderImage:(UIImage *)placeholder {
    [animatedImageView yy_setImageWithURL:[NSURL URLWithString:url]
                              placeholder:placeholder
                                  options:YYWebImageOptionProgressiveBlur | YYWebImageOptionShowNetworkActivity | YYWebImageOptionSetImageWithFadeAnimation
                               completion:^(UIImage *_Nullable image, NSURL *_Nonnull url, YYWebImageFromType from, YYWebImageStage stage, NSError *_Nullable error) {
    }];
}

@end
