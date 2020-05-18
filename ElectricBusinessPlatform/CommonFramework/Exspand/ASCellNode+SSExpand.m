//
//  ASCellNode+SSExpand.m
//  SanCell
//
//  Created by Owen on 2019/8/9.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "ASCellNode+SSExpand.h"

@implementation ASCellNode (SSExpand)

- (UIImageView *) getImageWithImageUrl:(NSString *)imageUrl superNode:(ASCollectionNode *) bgNode  cellImagePoint:(CGPoint) imageOrgin cellImageSize:(CGSize) imageSize;{
    NSLog(@"***%@",[NSValue valueWithCGRect:self.frame]);
    CGRect currentRect = [bgNode.view convertRect:self.frame toView:bgNode.supernode.view];
    
    UIImageView *animationImage = [[UIImageView alloc] init];
    NSLog(@"***%@",[NSValue valueWithCGRect:currentRect]);
    animationImage.frame = CGRectMake(currentRect.origin.x + imageOrgin.x , currentRect.origin.y + imageOrgin.y ,imageSize.width, imageSize.height);
    animationImage.backgroundColor = [UIColor whiteColor];
    animationImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]]];
    animationImage.contentMode = UIViewContentModeScaleAspectFill;
    return animationImage;
}
@end
