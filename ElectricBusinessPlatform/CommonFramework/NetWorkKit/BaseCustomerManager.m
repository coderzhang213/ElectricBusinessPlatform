//
//  BaseCustomerManager.m
//  SanCell
//
//  Created by Owen on 2019/10/9.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseCustomerManager.h"
#import "NSString+SSExpand.h"

#define OnLineApp_key    @"79c19044fa1a40689282e6dd3de83f3f"
#define Customer_id      @"ssxq"

#define secret           @"ece79fe5a3b54a15b3d596136b47ec2b"
#define BaseUrl          @"http://customer.sanshaoxingqiu.cn:28080/mchat"





@implementation BaseCustomerManager


+ (NSString *) craterSignWithProductID:(NSNumber *) tid{
    
    NSString *tempStr = [[NSString alloc] initWithFormat:@"%@app_key%@customer_id%@mobile_phone%@sign_methodmd5tId%@timestamp%duser_id%@v1.0%@",
                         secret,
                         OnLineApp_key,
                         Customer_id,
                         [[DataManager lightData] readMobile],
                         tid,
                         [AppGroup getCurrentDate],
                         [[DataManager lightData] readUserId],
                         secret];

    NSString *baseUrl = [[NSString alloc] initWithFormat:@"%@?timestamp=%d&app_key=%@&customer_id=ssxq&v=1.0&sign_method=md5&user_id=%@&mobile_phone=%@&tId=%@&sign=%@",
                         BaseUrl,
                         [AppGroup getCurrentDate],
                         OnLineApp_key,
                         [[DataManager lightData] readUserId],
                         [[DataManager lightData] readMobile],
                         tid,
                         [[tempStr md5] uppercaseString]];
    NSLog(@"***%@",baseUrl);
    return baseUrl;
    
}


@end
