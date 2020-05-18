//
//  ASCollectionNode+SSExpand.h
//  SanCell
//
//  Created by Owen on 2019/6/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "ASCollectionNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASCollectionNode (SSExpand)

@property (nonatomic, copy) NSArray *js_reloadIndexPaths;//需要刷新的indexPath
@end

NS_ASSUME_NONNULL_END
