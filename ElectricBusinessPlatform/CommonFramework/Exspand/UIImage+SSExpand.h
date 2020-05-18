//
//  UIImage+SSExpand.h
//  SanCell
//
//  Created by Owen on 2019/7/2.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SSExpand)

+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size;

+ (UIImage *)scaleToRect:(UIImage *)img;

+ (UIImage*)CropImage:(UIImage*)photoimage;

+ (UIImage*) scaleToSizeOfHeight280:(UIImage *) img;

+ (UIImage *)imageWithSize:(CGSize)size borderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth;

+ (UIImage *)getImageFromView:(UIView *)view;

+ (UIImage *)getImageFromView:(UIView *)view isOpaque:(BOOL)opaque;

- (NSData *)compressOriginalImage:(UIImage *)image toMaxDataSizeKBytes:(CGFloat)size;

+ (UIImage*)createImageWithColor: (UIColor*) color;

- (UIImage*)imageByApplyingAlpha:(CGFloat)alpha;

- (UIImage *)normalizedImage;

@end

NS_ASSUME_NONNULL_END
