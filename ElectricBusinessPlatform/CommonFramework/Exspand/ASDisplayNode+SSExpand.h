//
//  ASDisplayNode+SSExpand.h
//  SanCell
//
//  Created by Owen on 2019/6/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "ASDisplayNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASDisplayNode (SSExpand)

- (void)setBorderNodeTop:(BOOL)top left:(BOOL)left bottom:(BOOL)bottom right:(BOOL)right borderColor:(UIColor *)color borderWidth:(CGFloat)width;


@end

NS_ASSUME_NONNULL_END
