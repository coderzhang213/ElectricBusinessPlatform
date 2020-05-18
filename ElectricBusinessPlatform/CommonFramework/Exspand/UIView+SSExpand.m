//
//  UIView+SSExpand.m
//  SanCell
//
//  Created by scz on 2019/11/29.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "UIView+SSExpand.h"


@implementation UIView (SSExpand)

- (void)setupRoundedCorners:(UIRectCorner)rectCorner
               cornerRadius:(CGFloat)radius
                borderWidth:(CGFloat)borderWidth
                borderColor:(UIColor * _Nullable)borderColor
                  fillColor:(UIColor * _Nullable)fillColor
                  layerName:(NSString * _Nullable)name {
//设置遮罩
    CAShapeLayer *mask=nil;
    if ([self.layer.mask.name isEqualToString:name]) {
        mask = self.layer.mask;
    } else {
        mask=[CAShapeLayer layer];
        mask.name = name;
    }
    UIBezierPath * path= [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(radius,radius)];
    mask.path=path.CGPath;
    mask.frame=self.bounds;
    self.layer.mask = mask;
//设置边框及填充色
    __block CAShapeLayer *borderLayer = nil;
    if (name.length) {
        NSArray<CALayer *> *subLayers = self.layer.sublayers;
        [subLayers enumerateObjectsUsingBlock:^(CALayer * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if([obj.name isEqualToString:name]){
                borderLayer = (CAShapeLayer *)obj;
                *stop = YES;
            }
        }];
    }
    
    if (!borderLayer) {
        borderLayer=[CAShapeLayer layer];
        borderLayer.name = name;
        [self.layer addSublayer:borderLayer];
    }
    
    borderLayer.path=path.CGPath;
    if (fillColor) {
        borderLayer.fillColor = fillColor.CGColor;
    }
    if (borderColor) {
        borderLayer.strokeColor = borderColor.CGColor;
    }
    
    if (borderWidth > 0) {
        borderLayer.lineWidth = borderWidth;
    }
    borderLayer.frame = self.bounds;
}

@end
