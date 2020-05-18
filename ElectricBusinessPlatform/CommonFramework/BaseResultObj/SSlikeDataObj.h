//
//  SSlikeDataObj.h
//  SanCell
//
//  Created by Owen on 2019/6/28.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSlikeDataObj : BaseResultObj

@property (nonatomic,copy) NSString *remark;

@property (nonatomic,strong) NSNumber *dataCount;

@property (nonatomic,strong) NSArray *dataList;

@property (nonatomic,strong) NSNumber *confirmState;

@property (nonatomic,strong) NSNumber *freightE2;

@property (nonatomic,strong) NSNumber *goodsSupplierId;

@property (nonatomic,strong) SSlikeDataObj *orderDetail;

@property (nonatomic,strong) NSNumber *deliveryState;

@property (nonatomic,strong) NSNumber *orderState;

@property (nonatomic,strong) NSNumber *payState;

@property (nonatomic,strong) NSNumber *currentID;

@property (nonatomic,strong) NSNumber *isEvaluation;

@property (nonatomic,strong) NSNumber *orderDetailNum;


@property (nonatomic,strong) NSNumber *payEndTime;


@property (nonatomic,copy) NSString *orderNumber;

@property (nonatomic,strong) NSNumber *createdAt;

@property (nonatomic,strong) NSNumber *payClientTypeId;

@property (nonatomic,strong) NSNumber *goodsFlag;

@property (nonatomic,strong) NSNumber *totalAmtE2;

@property (nonatomic,strong) NSNumber *totalMoneyAmtE2;

@property (nonatomic,strong) NSNumber *totalPointAmtE2;

@property (nonatomic,strong) NSNumber *rewardPointE2;

@property (nonatomic,strong) NSNumber *deductPriceE2;


@end

NS_ASSUME_NONNULL_END
