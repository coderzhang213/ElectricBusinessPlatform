//
//  ASCellNode+SSExpand.h
//  SanCell
//
//  Created by Owen on 2019/8/9.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "ASCellNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface ASCellNode (SSExpand)

- (UIImageView *) getImageWithImageUrl:(NSString *)imageUrl superNode:(ASCollectionNode *) bgNode  cellImagePoint:(CGPoint) imageOrgin cellImageSize:(CGSize) imageSize;

@end

NS_ASSUME_NONNULL_END
