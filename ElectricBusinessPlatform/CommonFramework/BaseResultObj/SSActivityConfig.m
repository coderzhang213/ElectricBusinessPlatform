//
//  SSActivityConfig.m
//  SanCell
//
//  Created by Owen on 2019/12/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSActivityConfig.h"

@implementation SSActivityConfig

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    
    return @{@"currentID" : @"id"};
}
@end
