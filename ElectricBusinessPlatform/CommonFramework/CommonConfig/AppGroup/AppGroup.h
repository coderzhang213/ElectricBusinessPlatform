//
//  AppGroup.h
//  CAMELLIAE
//
//  Created by 张越 on 16/3/17.
//  Copyright © 2016年 张越. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppGroup : NSObject

/**
 *  设备唯一标识（机器识别码）
 *
 *  @return uuid
 */
+ (NSString*)deviceUUID;


/**
 *  设备系统版本号
 *
 *  @return iOS系统版本
 */
+ (NSString*)deviceSystemVersion;

/**
 *  设备系统
 *
 *  @return iOS系统
 */
+ (NSString*)deviceSystem;

/**
 *  设备型号
 *
 *  @return iPhone型号
 */
+ (NSString*)deviceName;

/**
 *  应用类型
 *
 *  @return 1
 */

+ (NSNumber*)appType;

/**
 *  应用版本号
 *
 *  @return app的版本号
 */
+ (NSString*)appVersion;

/**
 *  应用名称
 *
 *  @return app的名称
 */
+ (NSString*)appName;


//获取 bundle identifier
+ (NSString *) appbundleIdentifier;


/**
 *  应用build版本号
 *
 *  @return app的build版本号
 */
+ (NSString*)appBuildVersion;

/**获取ios时间戳*/
+ (int) getCurrentDate;
+ (void) getCurrentTiming:(NSNumber *)serveTime;
@end
