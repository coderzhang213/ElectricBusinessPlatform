//
//  SSNavigtionBar.h
//  SanCell
//
//  Created by Owen on 2019/5/13.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "ASDisplayNode.h"

NS_ASSUME_NONNULL_BEGIN

//类型名字
typedef enum{
  
    normalType,
    homePageType,
    
    
} NavbarType;

@protocol NavigationBarProtocol <NSObject>

@optional

- (void) didSelectedLeftBarItem;
- (void) didSelectedRightBarItem;
- (void) scrollViewScrollToTop;


@end


@interface SSNavigtionBar : ASDisplayNode

@property (nonatomic,strong) UITextField *searchTextField;

@property (nonatomic,strong) ASButtonNode *leftBtn;

@property (nonatomic,strong) ASButtonNode *right1Btn;

@property (nonatomic,strong) ASButtonNode *rightBtn;

@property (nonatomic,strong) ASTextNode * title;

@property (nonatomic,strong) ASDisplayNode *searchbgNode;

@property (nonatomic,strong) ASImageNode *bgImage;

- (void) setComplateRightBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setLeftBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setWhiteLeftBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setWhiteLeftBtn;

- (void) setBlackLeftBtn;

- (void) setBlackServeBtn;

- (void) setWhiteServeBtn;

- (void) setRightSkipBtn;
//社群-我的群组
- (void)setRightMyGroupsBtn;

- (void) setTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setLeftBtnAndRightWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setLeftBtnAndDelegatebtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setLeftBtnAndEditbtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setLeftBtnAndSearchBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setLeftBtnAndNoSearchBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic;

- (void) setSearchBtnAndHomeTitle:(NSString *) title;

- (void) setProductSetting;

//返回+搜索
- (void)setSearchWithLeftBtn;

@property (nonatomic,strong) id<NavigationBarProtocol>delegate;

- (void) changeNavBarAlpha:(CGFloat) number;

- (void) showHomeNav;

- (void) hiddenHomeNav;

@end

NS_ASSUME_NONNULL_END
