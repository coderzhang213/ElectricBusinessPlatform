//
//  UIButton+SSExspand.h
//  SanCell
//
//  Created by scz on 2019/11/17.
//  Copyright © 2019 Owen. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "UIButton+SSExpand.h"

typedef NS_ENUM(NSUInteger, SSButtonEdgeInsetsStyle) {
    SSButtonEdgeInsetsStyleTop, // image在上，label在下
    SSButtonEdgeInsetsStyleLeft, // image在左，label在右
    SSButtonEdgeInsetsStyleBottom, // image在下，label在上
    SSButtonEdgeInsetsStyleRight // image在右，label在左
};

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (SSExspand)

/**
*  设置button的titleLabel和imageView的布局样式，及间距
*
*  @param style titleLabel和imageView的布局样式
*  @param space titleLabel和imageView的间距
*/
- (void)layoutButtonWithEdgeInsetsStyle:(SSButtonEdgeInsetsStyle)style imageTitleSpace:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
