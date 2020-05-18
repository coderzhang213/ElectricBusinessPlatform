//
//  UIButton+SSExpand.h
//  SanCell
//
//  Created by Owen on 2019/7/24.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (SSExpand)

/** 图片在左，标题在右 */
- (void)setIconInLeft;
/** 图片在右，标题在左 */
- (void)setIconInRight;
/** 图片在上，标题在下 */
- (void)setIconInTop;
/** 图片在下，标题在上 */
- (void)setIconInBottom;

//** 可以自定义图片和标题间的间隔 */
- (void)setIconInLeftWithSpacing:(CGFloat)Spacing;
- (void)setIconInRightWithSpacing:(CGFloat)Spacing;
- (void)setIconInTopWithSpacing:(CGFloat)Spacing;
- (void)setIconInBottomWithSpacing:(CGFloat)Spacing;

@end

NS_ASSUME_NONNULL_END
