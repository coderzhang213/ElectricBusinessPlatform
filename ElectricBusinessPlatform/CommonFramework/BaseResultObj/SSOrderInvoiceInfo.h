//
//  SSOrderInvoiceInfo.h
//  SanCell
//
//  Created by Owen on 2019/9/9.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSOrderInvoiceInfo : BaseResultObj

@property (nonatomic,strong) NSNumber *currentID;

@property (nonatomic,strong) NSNumber *orderId;

@property (nonatomic,strong) NSNumber *orderParcelId;

@property (nonatomic,strong) NSNumber *invoiceType;

@property (nonatomic,copy) NSString *invoiceTypeStr;

@property (nonatomic,strong) NSNumber *invoiceLookedUp;

@property (nonatomic,copy) NSString *invoiceLookedUpStr;

@property (nonatomic,copy) NSString *companyIdentifyNumber;

@property (nonatomic,strong) NSNumber *makeOutInvoiceStatue;

@property (nonatomic,copy) NSString *companyName;

@property (nonatomic,copy) NSString *invoiceUrl;

@end

NS_ASSUME_NONNULL_END
