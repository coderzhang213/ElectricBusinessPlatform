//
//  UIImage+SSGIF.h
//  SanCell
//
//  Created by scz on 2020/1/3.
//  Copyright © 2020 Owen. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void (^GIFImageBlock)(UIImage *GIFImage);

@interface UIImage (SSGIF)

/** 根据本地GIF图片名 获得GIF image对象 */
+ (UIImage *)imageWithGIFNamed:(NSString *)name;
 
/** 根据一个GIF图片的data数据 获得GIF image对象 */
+ (UIImage *)imageWithGIFData:(NSData *)data;
 
/** 根据一个GIF图片的URL 获得GIF image对象 */
+ (void)imageWithGIFUrl:(NSString *)url and:(GIFImageBlock)gifImageBlock;


@end

NS_ASSUME_NONNULL_END
