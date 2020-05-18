//
//  SSImageObj.h
//  SanCell
//
//  Created by Owen on 2019/6/28.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSImageObj : BaseResultObj

@property (nonatomic,copy) NSString *coverPic;

@property (nonatomic,strong) NSNumber *picHeight;

@property (nonatomic,strong) NSNumber *picWidth;

//(picWidth/picHeight)
@property (nonatomic,strong) NSNumber *ratio;

@end

NS_ASSUME_NONNULL_END
