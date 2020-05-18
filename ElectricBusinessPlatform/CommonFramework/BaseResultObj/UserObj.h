//
//  UserObj.h
//  SanCell
//
//  Created by Owen on 2019/6/23.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "SSUserInfoObj.h"
NS_ASSUME_NONNULL_BEGIN

@interface UserObj : NSObject

@property (nonatomic,strong) NSNumber *userId;

@property (nonatomic,copy) NSString *mobile;

//@property (nonatomic,strong) SSUserInfoObj *userInfo;


@property (nonatomic,strong) NSNumber *createAt;

@property (nonatomic,strong) NSNumber *emailIsVerified;

@property (nonatomic,copy) NSString *gravatar;

@property (nonatomic,strong) NSNumber *memberLevel;

@property (nonatomic,copy) NSString *nickName;

@property (nonatomic,copy) NSString *nickNameFormatting;

@property (nonatomic,strong) NSNumber *realMemberLevel;

@property (nonatomic,strong) NSNumber *status;

@property (nonatomic,strong) NSNumber *updateAt;

@property (nonatomic,copy) NSString *vipPeriodOfValidity;

@property (nonatomic,strong) NSNumber *addPasswordStatus;

@property (nonatomic,strong) NSNumber *addTransactionPasswdStatus;

@property (nonatomic,strong) NSNumber *freezePointE2;

@property (nonatomic,strong) NSNumber *pointE2;

@property (nonatomic,strong) NSNumber *pointRollE2;

@property (nonatomic,strong) NSNumber *couponCount;

@end

NS_ASSUME_NONNULL_END
