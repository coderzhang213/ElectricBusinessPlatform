//
//  SSActivityConfig.h
//  SanCell
//
//  Created by Owen on 2019/12/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSActivityConfig : BaseResultObj

@property (nonatomic,strong) NSNumber *currentID;

@property (nonatomic,copy) NSString *title;

@property (nonatomic,strong) NSNumber *startTime;

@property (nonatomic,strong) NSNumber *endTime;

@property (nonatomic,copy) NSString *startTimeStr;

@property (nonatomic,copy) NSString *endTimeStr;

@property (nonatomic,strong) NSNumber *sellStockNumber;

@property (nonatomic,strong) NSNumber *salesVolume;

@property (nonatomic,strong) NSNumber *userRealPriceE2;

@property (nonatomic,strong) NSNumber *status;

@property (nonatomic,strong) NSNumber *goodsStatus;

@property (nonatomic,copy) NSString *statusStr;

@property (nonatomic,copy) NSString *realUrl;

@property (nonatomic,copy) NSString *bannerPic;

@property (nonatomic,copy) NSString *background;

@property (nonatomic,strong) NSNumber *activityId;


@end

NS_ASSUME_NONNULL_END
