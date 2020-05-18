//
//  UIApplication+SSExpand.m
//  SanCell
//
//  Created by scz on 2019/12/11.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "UIApplication+SSExpand.h"

@implementation UIApplication (SSExpand)

+ (UIViewController *)topViewController:(UIViewController *)baseViewController {
    if (baseViewController == nil) {
        baseViewController = [[UIApplication sharedApplication] keyWindow].rootViewController;
    }
    
    if ([baseViewController isKindOfClass:[UINavigationController class]]) {
        return [UIApplication topViewController:((UINavigationController *)baseViewController).visibleViewController];
    }
    
    if ([baseViewController isKindOfClass:[UITabBarController class]]) {
        UIViewController *selectViewController = ((UITabBarController *)baseViewController).selectedViewController;
        if (selectViewController) {
            return [UIApplication topViewController:selectViewController];
        }
    }
    
    UIViewController *presentViewController = baseViewController.presentedViewController;
    if (presentViewController) {
        return [self topViewController:presentViewController];
    }
    
    return baseViewController;
}

@end
