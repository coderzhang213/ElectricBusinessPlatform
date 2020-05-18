//
//  UIImage+SSExpand.m
//  SanCell
//
//  Created by Owen on 2019/7/2.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "UIImage+SSExpand.h"

@implementation UIImage (SSExpand)

+ (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0,0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage =UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    //返回新的改变大小后的图片
    return scaledImage;
}


+ (UIImage*)CropImage:(UIImage*)photoimage{
    
    
    CGImageRef imgRef =photoimage.CGImage;
    
    float width = CGImageGetWidth(imgRef);
    float height = CGImageGetHeight(imgRef);
    
    CGImageRef finalImgRef;
    if (width >= height) {
        finalImgRef=CGImageCreateWithImageInRect(imgRef,CGRectMake(width/2.0 - height/2.0,
                                                                   0,
                                                                   height,
                                                                   height));
    }else{
        finalImgRef=CGImageCreateWithImageInRect(imgRef,CGRectMake(0,
                                                                   height/2.0 - width/2.0,
                                                                   width,
                                                                   width));
    }
    
    return [UIImage imageWithCGImage:finalImgRef];
}


+ (UIImage *)scaleToRect:(UIImage *)img {
    
    size_t CGImageGetWidth(CGImageRef img);
    size_t CGImageGetHeight(CGImageRef img);
    
    CGImageRef cgRef = img.CGImage;
    float height = CGImageGetHeight(cgRef);
    CGImageRef imageRef = CGImageCreateWithImageInRect(cgRef, CGRectMake(0,0,height,height));
    UIImage *thumbScale = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    
    return thumbScale;
    
}

+ (UIImage*) scaleToSizeOfHeight280:(UIImage *) img{
    
    CGSize size = CGSizeMake(img.size.width, img.size.height/304*280);
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0,img.size.height/304*((304 - 280)/2.0), size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage =UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    //返回新的改变大小后的图片
    return scaledImage;
    
}

+ (UIImage *)imageWithSize:(CGSize)size borderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    [[UIColor clearColor] set];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextSetLineWidth(context, borderWidth);
    CGContextSetStrokeColorWithColor(context, color.CGColor);
    CGFloat lengths[] = { 3, 1 };
    CGContextSetLineDash(context, 0, lengths, 1);
    CGContextMoveToPoint(context, 0.0, 0.0);
    CGContextAddLineToPoint(context, size.width, 0.0);
    CGContextAddLineToPoint(context, size.width, size.height);
    CGContextAddLineToPoint(context, 0, size.height);
    CGContextAddLineToPoint(context, 0.0, 0.0);
    CGContextStrokePath(context);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)getImageFromView:(UIView *)view
{
    //UIGraphicsBeginImageContext(theView.bounds.size);
    CGSize s = view.bounds.size;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(s, YES, [UIScreen mainScreen].scale);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)getImageFromView:(UIView *)view isOpaque:(BOOL)opaque
{
    //UIGraphicsBeginImageContext(theView.bounds.size);
    CGSize s = view.bounds.size;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(s, opaque, [UIScreen mainScreen].scale);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


#pragma mark - 压缩图片
- (NSData *)compressOriginalImage:(UIImage *)image toMaxDataSizeKBytes:(CGFloat)size
{
    UIImage *OriginalImage = image;
    
    // 执行这句代码之后会有一个范围 例如500m 会是 100m～500k
    NSData * data = UIImageJPEGRepresentation(image, 1.0);
    CGFloat dataKBytes = data.length/1000.0;
    CGFloat maxQuality = 0.9f;
    
    // 执行while循环 如果第一次压缩不会小雨100k 那么减小尺寸在重新开始压缩
    while (dataKBytes > size)
    {
        while (dataKBytes > size && maxQuality > 0.1f)
        {
            maxQuality = maxQuality - 0.1f;
            data = UIImageJPEGRepresentation(image, maxQuality);
            dataKBytes = data.length / 1000.0;
            if(dataKBytes <= size )
            {
                return data;
            }
        }
        OriginalImage =[self compressOriginalImage:OriginalImage toWidth:OriginalImage.size.width * 0.8];
        image = OriginalImage;
        data = UIImageJPEGRepresentation(image, 1.0);
        dataKBytes = data.length / 1000.0;
        maxQuality = 0.9f;
    }
    return data;
}

#pragma mark - 改变图片的大小
-(UIImage *)compressOriginalImage:(UIImage *)image toWidth:(CGFloat)targetWidth
{
    CGSize imageSize = image.size;
    CGFloat Originalwidth = imageSize.width;
    CGFloat Originalheight = imageSize.height;
    CGFloat targetHeight = Originalheight / Originalwidth * targetWidth;
    UIGraphicsBeginImageContext(CGSizeMake(targetWidth, targetHeight));
    [image drawInRect:CGRectMake(0,0,targetWidth,  targetHeight)];
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


#pragma mark - 颜色c生成图片
+ (UIImage*)createImageWithColor: (UIColor*) color
{

    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);

    UIGraphicsBeginImageContext(rect.size);

    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);

    CGContextFillRect(context, rect);

    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return theImage;

}

#pragma mark -
- (UIImage*)imageByApplyingAlpha:(CGFloat)alpha {

    UIGraphicsBeginImageContextWithOptions(self.size,NO,0.0f);

    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGRect area = CGRectMake(0,0,self.size.width,self.size.height);
    
    CGContextScaleCTM(ctx, 1, -1);

    CGContextTranslateCTM(ctx, 0, -area.size.height);

    CGContextSetBlendMode(ctx, kCGBlendModeMultiply);

    CGContextSetAlpha(ctx, alpha);

    CGContextDrawImage(ctx, area,self.CGImage);

    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

    return newImage;
}

#pragma mark - 拍照图片方向
- (UIImage *)normalizedImage {
    if (self.imageOrientation == UIImageOrientationUp) return self;
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    [self drawInRect:(CGRect){0, 0, self.size}];
    UIImage *normalizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return normalizedImage;
}

@end
