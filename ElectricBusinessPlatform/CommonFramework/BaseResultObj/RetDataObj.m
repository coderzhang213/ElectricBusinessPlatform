//
//  RetDataObj.m
//  SanCell
//
//  Created by Owen on 2019/6/23.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "RetDataObj.h"

@implementation RetDataObj

+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{ @"currentID": @"id", @"isNewUser": @"newUser" };
}

@end
