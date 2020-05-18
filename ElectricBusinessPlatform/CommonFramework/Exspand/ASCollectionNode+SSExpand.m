//
//  ASCollectionNode+SSExpand.m
//  SanCell
//
//  Created by Owen on 2019/6/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "ASCollectionNode+SSExpand.h"

static void *strKey = &strKey;

@implementation ASCollectionNode (SSExpand)

- (void)setJs_reloadIndexPaths:(NSArray *)js_reloadIndexPaths{
    
    objc_setAssociatedObject(self, &strKey, js_reloadIndexPaths, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSArray *)js_reloadIndexPaths{
    return objc_getAssociatedObject(self, &strKey);
}
@end
