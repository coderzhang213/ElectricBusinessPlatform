//
//  UserOrderObj.h
//  SanCell
//
//  Created by Owen on 2019/8/16.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserOrderObj : BaseResultObj

@property (nonatomic,strong) NSNumber *orderId;

@property (nonatomic,strong) NSNumber *parcelId;

@end

NS_ASSUME_NONNULL_END
