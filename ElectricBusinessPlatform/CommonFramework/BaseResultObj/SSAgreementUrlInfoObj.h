//
//  SSAgreementUrlInfoObj.h
//  SanCell
//
//  Created by Owen on 2019/7/7.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSAgreementUrlInfoObj : BaseResultObj

@property (nonatomic,copy) NSString *memberAgreementUrl;

@property (nonatomic,copy) NSString *privacyAgreementUrl;

@property (nonatomic,copy) NSString *userAgreementUrl;

@end

NS_ASSUME_NONNULL_END
