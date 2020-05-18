//
//  AFAppDotNetAPIClient.h
//  SanCell
//
//  Created by Owen on 2020/3/17.
//  Copyright © 2020 Owen. All rights reserved.
//

#import "AFHTTPSessionManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFAppDotNetAPIClient : AFHTTPSessionManager

+ (instancetype)sharedClient;

@end

NS_ASSUME_NONNULL_END
