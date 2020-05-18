//
//  AFAppDotNetAPIClient.m
//  SanCell
//
//  Created by Owen on 2020/3/17.
//  Copyright © 2020 Owen. All rights reserved.
//

#import "AFAppDotNetAPIClient.h"



@implementation AFAppDotNetAPIClient

+ (instancetype)sharedClient {
    static AFAppDotNetAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[AFAppDotNetAPIClient alloc] init];
//        _sharedClient.requestSerializer = [AFHTTPRequestSerializer serializer];
//        
//        AFSecurityPolicy *securityPolicy = [AFSecurityPolicy defaultPolicy];
//        [securityPolicy setAllowInvalidCertificates:YES];
//        [securityPolicy setValidatesDomainName:NO];
//        [_sharedClient setSecurityPolicy:securityPolicy];
//        _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
//        _sharedClient.responseSerializer.acceptableContentTypes =[NSSet setWithObjects:@"application/json",
//                                                                  @"text/json",
//                                                                  @"text/javascript",
//                                                                  @"text/html",
//                                                                  @"text/plain",
//                                                                  nil];
    });
    
    return _sharedClient;
}

@end
