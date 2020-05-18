//
//  SSHomePageActivityObj.h
//  SanCell
//
//  Created by Owen on 2019/9/10.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"
//#import "SpeedKillIObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSHomePageActivityObj : BaseResultObj

//@property (nonatomic,strong) SpeedKillIObj *seckillRoundInfo;

@property (nonatomic,strong) SSlikeDataObj *seckillGoodData;

@property (nonatomic,strong) SSlikeDataObj *headlinesInfo;

@property (nonatomic,strong) SSlikeDataObj *getNavInfo;

@property (nonatomic,copy) NSString *coverPic;

@property (nonatomic,strong) NSNumber *seckillRoundId;

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *year;

@property (nonatomic,copy) NSString *month;

@property (nonatomic,copy) NSString *day;

@property (nonatomic,copy) NSString *hour;

@property (nonatomic,strong) NSNumber *actBeginTime;

@property (nonatomic,strong) NSNumber *actEndTime;

@property (nonatomic,strong) NSNumber *createdAt;

@property (nonatomic,copy) NSString *seckillRoundStatus;

@property (nonatomic,copy) NSString *seckillRoundStatusStr;

@property (nonatomic,strong) NSNumber *seckillGoodsStatus;

@property (nonatomic,copy) NSString *waitBeginTimeStr;

@property (nonatomic,strong) NSNumber *stocksNum;


@property (nonatomic,strong) NSNumber *gapTime;

@property (nonatomic,copy) NSString *actBeginTimeHourStr;

@property (nonatomic,strong) NSNumber *goodsId;

@property (nonatomic,strong) NSNumber *skillPriceE2;

@property (nonatomic,copy) NSString *stocksPercentage;

@property (nonatomic,strong) NSNumber *seckillStatus;

//@property (nonatomic,strong) SSProductDetaillObj *goodsInfo;

@property (nonatomic,strong) NSNumber *seckillGoodsNum;


@end

NS_ASSUME_NONNULL_END
