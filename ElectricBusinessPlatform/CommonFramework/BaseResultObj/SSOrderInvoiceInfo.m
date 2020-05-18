//
//  SSOrderInvoiceInfo.m
//  SanCell
//
//  Created by Owen on 2019/9/9.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSOrderInvoiceInfo.h"

@implementation SSOrderInvoiceInfo

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    
    return @{@"currentID" : @"id"};
}

@end
