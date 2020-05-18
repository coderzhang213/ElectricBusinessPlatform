//
//  VCManger.m
//  CAMELLIAE
//
//  Created by 张越 on 16/3/17.
//  Copyright © 2016年 张越. All rights reserved.
//

#import "VCManger.h"
#import <UIKit/UIKit.h>

@implementation VCManger

static VCManger *manger           = nil;
static VCController *controller   = nil;
//static HomeVC *homeVC             = nil;
//static SecondHomeVC *secondHomeVC = nil;
//static SSCommunityVC *communityVC = nil;
//static SSShopCarVC *shopCarVC     = nil;

+ (instancetype) shareMangaer{

    if (manger == nil) {
        static dispatch_once_t oneToken;
        dispatch_once(&oneToken, ^{
            manger = [[VCManger alloc] init];
        });
    }
    return manger;
}

/**全局导航控制器*/
+ (VCController *) mainVC{
    
    
    if (controller == nil) {
        static dispatch_once_t oneToken;
        dispatch_once(&oneToken, ^{
            UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
            [window makeKeyAndVisible];
            [[UIApplication sharedApplication].delegate setWindow:window];
            controller = [[VCController alloc] init];
            controller.view.frame = window.bounds;
            window.rootViewController = controller;
            [window makeKeyAndVisible];
        
        });
    }
    return controller;
}

///**主页面*/
//+ (HomeVC *) homeVC{
//
//    if (homeVC == nil) {
//        static dispatch_once_t oneToken;
//        dispatch_once(&oneToken, ^{
//            homeVC = [[HomeVC alloc] init];
//        });
//    }
//    return homeVC;
//}
//
///**次级界面*/
//+ (SecondHomeVC *)secondHomeVC {
//    if (secondHomeVC == nil) {
//        static dispatch_once_t onceToken;
//        dispatch_once(&onceToken, ^{
//            secondHomeVC = [[SecondHomeVC alloc] init];
//        });
//    }
//    return secondHomeVC;
//}

//+ (SSCommunityVC *) communityVC{
//
//    if (communityVC == nil) {
//        
//        static dispatch_once_t oneToken;
//        dispatch_once(&oneToken, ^{
//            communityVC = [[SSCommunityVC alloc] init];
//        });
//    }
//
//    return communityVC;
//
//}
//+ (SSShopCarVC *) shopCarVC{
//
//    if (shopCarVC == nil) {
//        static dispatch_once_t oneToken;
//        dispatch_once(&oneToken, ^{
//            shopCarVC = [[SSShopCarVC alloc] initWith:HomeType];
//        });
//    }
//    return shopCarVC;
//}

//+ (BOOL) isInit{
//
//    if (communityVC) {
//
//        return YES;
//    }else{
//
//        return NO;
//    }
//}

#pragma mark - clearOtherVC
//+ (void) clearOtherVC{
//    
//    NSArray *array = [VCManger mainVC].viewControllers;
//    for (int i = 0; i < array.count - 1; i++) {
//        ASViewController *vc = array[i];
//        [vc removeFromParentViewController];
//        
//    }
//    [VCManger mainVC].viewControllers = @[];
//}
@end
