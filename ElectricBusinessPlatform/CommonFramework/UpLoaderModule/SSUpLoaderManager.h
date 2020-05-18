//
//  SSUpLoaderManager.h
//  SanCell
//
//  Created by Owen on 2019/6/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SSUpLoaderManager : NSObject

+(instancetype) shareInstance;


+(NSString*) aliUrlWithName:(NSString*)name;


//progress、complete 回调 都已切换至主线程
// names  返回阿里云 图片的 后缀名
- (void)asyncUploadImages:(NSArray<UIImage *> *)images
                 progress:(void(^)(int64_t byteSent, int64_t bytesTotal, double progress))progress
                 complete:(void(^)(NSArray<NSString *> *names, BOOL isSuccess))complete;

@end

NS_ASSUME_NONNULL_END
