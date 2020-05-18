//
//  SSWebViewLinkVC.h
//  SanCell
//
//  Created by Owen on 2019/8/27.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface SSWebViewLinkVC : BaseVC

@property (nonatomic,copy) NSString *currentTitle;

@property (nonatomic,copy) NSString *WhiteCurrentTitle;

@property (nonatomic,copy) NSString *GoldCurrentTitle;

@property (nonatomic,copy) NSString *shareUrl;

@property (nonatomic,strong) NSNumber *isShare;

@property (nonatomic,copy) NSString *imageUrl;

@property (nonatomic,copy) NSString *url;

@property (nonatomic,copy) NSString *name;

@property (nonatomic,copy) NSString *desc;

@property (nonatomic,assign) BOOL isDetailMes;

@property (nonatomic,assign) BOOL isVIPRights;

@property (nonatomic,assign) BOOL backNativeVC;

@end

NS_ASSUME_NONNULL_END
