//
//  VCManger.h
//  CAMELLIAE
//
//  Created by 张越 on 16/3/17.
//  Copyright © 2016年 张越. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VCController.h"
//#import "HomeVC.h"
//#import "SSShopCarVC.h"
//#import "SSCommunityVC.h"
//#import "SecondHomeVC.h"

@interface VCManger : NSObject

/**全局导航控制器*/
+ (VCController *) mainVC;

///**主界面*/
//+ (HomeVC *) homeVC;
//
////+ (SSCommunityVC *) communityVC;
//
//+ (SSShopCarVC *) shopCarVC;
//
///*次级界面*/
//+ (SecondHomeVC *)secondHomeVC;

+ (void) clearOtherVC;

//+ (BOOL) isInit;

@end
