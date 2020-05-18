//
//  BaseVC.m
//  SanCell
//
//  Created by Owen on 2019/5/7.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseVC.h"
#import "SSShareManager.h"


@interface BaseVC ()<NavigationBarProtocol>


@end

@implementation BaseVC

- (instancetype)init {
    self = [super init];

    if (self) {
        self.contentNode = [[ASDisplayNode alloc] init];
        self.contentNode.backgroundColor = [UIColor whiteColor];

        self.navBar = [[SSNavigtionBar alloc] init];
        self.navBar.delegate = self;
        self.navBar.backgroundColor = [UIColor whiteColor];
        self.navBar.hidden = YES;

    }

    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.navBar.view];
    [self.view addSubview:self.contentNode.view];


}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
    /***/
    if (@available(iOS 11.0, *)) {
        [[UIScrollView appearance] setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    } else {
        // Fallback on earlier versions
    }

    self.contentNode.frame = CGRectMake(0,
                                        0,
                                        WIDTH,
                                        HEIGHT);
    self.navBar.frame = CGRectMake(0,
                                   0,
                                   WIDTH,
                                   NavigationBarHeight + StatusBarHeight);

}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];

}


- (void)showNavBar {
    self.navBar.hidden = NO;
    [self.view bringSubviewToFront:self.navBar.view];
}

@end
