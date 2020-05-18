//
//  SSNavigationInfo.h
//  SanCell
//
//  Created by Owen on 2019/7/26.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "BaseResultObj.h"

@class SSImageObj;

NS_ASSUME_NONNULL_BEGIN

@interface SSNavigationInfo : BaseResultObj

@property (nonatomic,strong) SSImageObj *picObjInfo;

@property (nonatomic,strong) NSNumber *isShow;

@property (nonatomic,copy) NSString *webUrl;

@property (nonatomic,strong) NSNumber *objId;

@property (nonatomic,strong) NSNumber *objType;

@property (nonatomic,strong) NSNumber *dataType;

@property (nonatomic,strong) NSNumber *timePeriod;


@end


NS_ASSUME_NONNULL_END
