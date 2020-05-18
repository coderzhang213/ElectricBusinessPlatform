//
//  GroupInfoObj.h
//  SanCell
//
//  Created by Owen on 2019/12/30.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface GroupInfoObj : BaseResultObj

@property (nonatomic,strong) NSNumber *grouponBuyPageStatus;

@property (nonatomic,strong) NSNumber *groupOrderId;

@property (nonatomic,strong) NSNumber *buyerNum;

@property (nonatomic,strong) NSNumber *grouponPriceE2;

@property (nonatomic,strong) NSNumber *grouponEndTime;

@property (nonatomic,copy) NSString *grouponFinishHour;

@property (nonatomic,strong) NSArray *grouponOrders;

@property (nonatomic,strong) NSNumber *grouponSumStorck;

@property (nonatomic,strong) NSNumber *grouponGoodsNum;

@property (nonatomic,strong) NSNumber *SharingPriceE2;
 
@end

NS_ASSUME_NONNULL_END
