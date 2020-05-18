//
//  SSAlterView.h
//  SanCell
//
//  Created by Owen on 2019/7/19.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^Cancel)(void);

typedef void(^Confirm)(void);

@interface SSAlterView : UIView

@property (nonatomic,copy) Cancel cancelBlock;

@property (nonatomic,copy) Confirm confirmBlock;

- (instancetype)initWithNormalAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle;

- (instancetype)initWithOtherAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle;

- (instancetype)initWithNormalAltertitle:(NSString *) title andDesc:(NSString *) desc andImageUrl:(NSString *) url andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle;

@end

NS_ASSUME_NONNULL_END
