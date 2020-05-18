//
//  GoodsRegion.h
//  SanCell
//
//  Created by Owen on 2019/12/11.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface GoodsRegion : BaseResultObj

@property (nonatomic,strong) NSArray *provinceIdList;

@property (nonatomic,copy) NSString *provinceName;

@property (nonatomic,copy) NSString *regionAlias;

@end

NS_ASSUME_NONNULL_END
