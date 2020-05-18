//
//  SSInstitutionsInfoObj.h
//  SanCell
//
//  Created by Owen on 2020/5/14.
//  Copyright © 2020 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSInstitutionsInfoObj : BaseResultObj

@property (nonatomic,copy) NSString *address;

@property (nonatomic,copy) NSString *link;

@property (nonatomic,copy) NSString *phone;

@property (nonatomic,copy) NSString *title;


@end

NS_ASSUME_NONNULL_END
