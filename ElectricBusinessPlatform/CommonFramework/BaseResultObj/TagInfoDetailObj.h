//
//  TagInfoDetailObj.h
//  SanCell
//
//  Created by Owen on 2019/6/28.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface TagInfoDetailObj : BaseResultObj

@property (nonatomic,strong) NSNumber *currentID;

@property (nonatomic,copy) NSString *tagName;

@property (nonatomic,copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
