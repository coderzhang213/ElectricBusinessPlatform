//
//  SSAlterNodeManager.h
//  SanCell
//
//  Created by Owen on 2019/7/19.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^CancelProgress)(void);

typedef void(^ConfirmProgress)(void);

@interface SSAlterNodeManager : NSObject

+ (instancetype)shareAlterManager;

- (void) showNormalAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle confirm:(ConfirmProgress) confirm cancel:(CancelProgress) cancel;

- (void) showNormalAltertitle:(NSString *) title andDesc:(NSString *) desc  andCenterImageUrl:(NSString *) url andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle confirm:(ConfirmProgress) confirm cancel:(CancelProgress) cancel;

- (void) showOtherAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle confirm:(ConfirmProgress) confirm cancel:(CancelProgress) cancel;


@end


NS_ASSUME_NONNULL_END
