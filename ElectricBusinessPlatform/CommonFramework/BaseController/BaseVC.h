//
//  BaseVC.h
//  SanCell
//
//  Created by Owen on 2019/5/7.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "ASViewController.h"
#import "SSNavigtionBar.h"
NS_ASSUME_NONNULL_BEGIN


@interface BaseVC : ASViewController

@property (nonatomic,strong) ASDisplayNode *contentNode;

@property (nonatomic,strong) SSNavigtionBar *navBar;

- (void) showNavBar;


@end

NS_ASSUME_NONNULL_END
