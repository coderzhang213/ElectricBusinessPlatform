//
//  SSProductDetaillObj.h
//  SanCell
//
//  Created by Owen on 2019/6/28.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"
#import "TagInfoObj.h"
//#import "SSDetailProductSpeedKillObj.h"
//#import "SSSpeedKillGoodsInfoObj.h"
NS_ASSUME_NONNULL_BEGIN

@interface SSProductDetaillObj : BaseResultObj

//@property (nonatomic, strong) SSDetailProductSpeedKillObj *seckillInfo;

//@property (nonatomic, strong) SSSpeedKillGoodsInfoObj *goodsInfo;

@property (nonatomic, strong) NSNumber *seckillGoodsStatus;

@property (nonatomic, strong) NSNumber *seckillStockNum;

@property (nonatomic, copy) NSString *seckillGoodsStatusStr;

@property (nonatomic, strong) NSNumber *currentID;

@property (nonatomic, strong) NSNumber *skuId;

@property (nonatomic, strong) NSNumber *goodsTypeOne;

@property (nonatomic, strong) NSNumber *goodsTypeTwo;

@property (nonatomic, strong) NSNumber *goodsTypeThree;

@property (nonatomic, copy) NSString *supplierId;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *desc;

@property (nonatomic, strong) NSNumber *stockNumber;

@property (nonatomic, strong) NSNumber *userRealPriceE2;

@property (nonatomic, strong) NSNumber *activitySectionId;

@property (nonatomic, strong) NSNumber *status;

@property (nonatomic, copy) NSString *coverPic;

@property (nonatomic, copy) NSString *coverPicThumb;

@property (nonatomic, strong) NSNumber *memberLevelOnePriceE2;

@property (nonatomic, strong) NSNumber *memberLevelTwoPriceE2;

@property (nonatomic, strong) NSNumber *publishTime;

@property (nonatomic, copy) NSString *specification;

@property (nonatomic, strong) TagInfoObj *tagInfo;

@property (nonatomic, strong) NSArray *bannerPicArr;

@property (nonatomic, strong) NSArray *detailPicArr;

@property (nonatomic, strong) NSNumber *marketPriceE2;

@property (nonatomic, strong) NSNumber *minPriceE2;

@property (nonatomic, strong) NSNumber *goodsFlag;

@property (nonatomic, strong) NSNumber *goodsLevel;

@property (nonatomic, strong) NSNumber *goodsId;

@property (nonatomic, strong) NSNumber *isActivity;//1：活动商品，2非活动商品

@property (nonatomic, copy) NSString *titleAlias;

@property (nonatomic, strong) NSNumber *sellingPriceE2;

@property (nonatomic, strong) NSNumber *sku;

@property (nonatomic, strong) NSNumber *liveVolume;

@property (nonatomic, strong) NSNumber *goodsBrowse;

@end

NS_ASSUME_NONNULL_END
