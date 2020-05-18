//
//  BaseModelManager.h
//  SanCell
//
//  Created by Owen on 2019/5/14.
//  Copyright © 2019 Owen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseResultObj.h"
//#import "MActivityData.h"

NS_ASSUME_NONNULL_BEGIN

@protocol ModelDelegate <NSObject>

@optional

- (void) succeedBack:(id)responseResult
                withApiName:(NSString *)apiName;

- (void) showNoDataNode;

- (void) showNetWorkError;

- (void) noMoreData;


@end

@interface BaseModelManager : NSObject

@property (nonatomic,weak) id<ModelDelegate> delegate;


//- (void) saveUserMessage:(BaseResultObj *) obj;
//
//- (void) removeAllUserInfo;

@end

NS_ASSUME_NONNULL_END
