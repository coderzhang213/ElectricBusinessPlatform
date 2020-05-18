//
//  UIView+SSExpand.h
//  SanCell
//
//  Created by scz on 2019/11/29.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SSExpand)

/**
 设置指定位置的圆角

 @param rectCorner 圆角位置(该变量可使用或运算，用于同时设置多个圆角)
 @param radius 圆角半径
 @param borderWidth 边框宽度
 @param borderColor 边框颜色
 @param fillColor 填充色
 @param name 给子layer命名,防止重复设置增加开销
 */
- (void)setupRoundedCorners:(UIRectCorner)rectCorner
               cornerRadius:(CGFloat)radius
                borderWidth:(CGFloat)borderWidth
                borderColor:(UIColor  * _Nullable)borderColor
                  fillColor:(UIColor  * _Nullable)fillColor
                  layerName:(NSString * _Nullable)name;

@end

NS_ASSUME_NONNULL_END
