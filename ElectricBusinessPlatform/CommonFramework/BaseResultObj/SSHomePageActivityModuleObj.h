//
//  SSHomePageActivityModuleObj.h
//  SanCell
//
//  Created by Owen on 2019/9/10.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSHomePageActivityModuleObj : BaseResultObj

@property (nonatomic,strong) NSNumber *currentID;

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *webUrl;

@end

NS_ASSUME_NONNULL_END
