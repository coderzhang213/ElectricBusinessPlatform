//
//  SSAlterNodeManager.m
//  SanCell
//
//  Created by Owen on 2019/7/19.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSAlterNodeManager.h"
#import "SSAlterView.h"

@interface SSAlterNodeManager ()

//@property (nonatomic,strong) SSAlterView *alterView;

//@property (nonatomic,strong) UIView *bgView;

@end

@implementation SSAlterNodeManager

static SSAlterNodeManager *manager = nil;

+ (instancetype)shareAlterManager{
    
    if (manager == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            
            manager = [[SSAlterNodeManager alloc] init];
            
        });
    }
    
    return manager;
    
}


- (void) showNormalAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle confirm:(ConfirmProgress) confirm cancel:(CancelProgress) cancel{

    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    bgView.backgroundColor = [[UIColor wordsBlackColor] colorWithAlphaComponent:0.4];
    bgView.alpha = 0;


    [[UIApplication sharedApplication].keyWindow addSubview:bgView];
    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:bgView];
    
    POPBasicAnimation *animation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    animation.fromValue = @(0);
    animation.toValue =@(1);
    [bgView pop_addAnimation:animation forKey:@"show"];
    
//    __weak typeof(self) weakSelf = self;
       
    SSAlterView *alterView = [[SSAlterView alloc] initWithNormalAltertitle:title andDesc:desc andCancelBtntitle:cancelTitle andConfirmTitle:confrimTitle];
    
    
    alterView.cancelBlock = ^(){
        
        cancel();
        POPBasicAnimation *animation1 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
        animation1.fromValue = @(1);
        animation1.toValue =@(0);
        [bgView pop_addAnimation:animation1 forKey:@"hidden"];
        animation1.completionBlock = ^(POPAnimation *anim, BOOL finished) {
          
            [bgView removeFromSuperview];
            
        };
        
    };
    
    alterView.confirmBlock = ^(){
        
        confirm();
        POPBasicAnimation *animation1 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
        animation1.fromValue = @(1);
        animation1.toValue =@(0);
        [bgView pop_addAnimation:animation1 forKey:@"hidden"];
        animation1.completionBlock = ^(POPAnimation *anim, BOOL finished) {
            
            [bgView removeFromSuperview];
            
        };
        
    };
    
    [bgView addSubview:alterView];
    
    
    alterView.center = CGPointMake(WIDTH/2.0, HEIGHT/2.0);
    
}

- (void) showNormalAltertitle:(NSString *) title andDesc:(NSString *) desc  andCenterImageUrl:(NSString *) url andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle confirm:(ConfirmProgress) confirm cancel:(CancelProgress) cancel{
    
    UIView *bgView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    bgView.backgroundColor = [[UIColor wordsBlackColor] colorWithAlphaComponent:0.4];
    bgView.alpha = 0;
    
    
    [[UIApplication sharedApplication].keyWindow addSubview:bgView];
    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:bgView];
    
    POPBasicAnimation *animation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    animation.fromValue = @(0);
    animation.toValue =@(1);
    [bgView pop_addAnimation:animation forKey:@"show"];
    
//    __weak typeof(self) weakSelf = self;
    
    SSAlterView *alterView = [[SSAlterView alloc] initWithNormalAltertitle:title andDesc:desc andImageUrl:url andCancelBtntitle:cancelTitle andConfirmTitle:confrimTitle];
    
    
    alterView.cancelBlock = ^(){
        
        cancel();
        POPBasicAnimation *animation1 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
        animation1.fromValue = @(1);
        animation1.toValue =@(0);
        [bgView pop_addAnimation:animation1 forKey:@"hidden"];
        animation1.completionBlock = ^(POPAnimation *anim, BOOL finished) {
            
            [bgView removeFromSuperview];
            
        };
        
    };
    
    alterView.confirmBlock = ^(){
        
        confirm();
        POPBasicAnimation *animation1 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
        animation1.fromValue = @(1);
        animation1.toValue =@(0);
        [bgView pop_addAnimation:animation1 forKey:@"hidden"];
        animation1.completionBlock = ^(POPAnimation *anim, BOOL finished) {
            
            [bgView removeFromSuperview];
            
        };
        
    };
    
    [bgView addSubview:alterView];
    
    
    alterView.center = CGPointMake(WIDTH/2.0, HEIGHT/2.0);

}

- (void) showOtherAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle confirm:(ConfirmProgress) confirm cancel:(CancelProgress) cancel{

    UIView *bgView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT)];
    bgView.backgroundColor = [[UIColor wordsBlackColor] colorWithAlphaComponent:0.4];
    bgView.alpha = 0;


    [[UIApplication sharedApplication].keyWindow addSubview:bgView];
    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:bgView];
    
    POPBasicAnimation *animation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    animation.fromValue = @(0);
    animation.toValue =@(1);
    [bgView pop_addAnimation:animation forKey:@"show"];
    
//    __weak typeof(self) weakSelf = self;
       
    SSAlterView *alterView = [[SSAlterView alloc] initWithOtherAltertitle:title andDesc:desc andCancelBtntitle:cancelTitle andConfirmTitle:confrimTitle];
    
    
    alterView.cancelBlock = ^(){
        
        cancel();
        POPBasicAnimation *animation1 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
        animation1.fromValue = @(1);
        animation1.toValue =@(0);
        [bgView pop_addAnimation:animation1 forKey:@"hidden"];
        animation1.completionBlock = ^(POPAnimation *anim, BOOL finished) {
          
            [bgView removeFromSuperview];
            
        };
        
    };
    
    alterView.confirmBlock = ^(){
        
        confirm();
        POPBasicAnimation *animation1 = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
        animation1.fromValue = @(1);
        animation1.toValue =@(0);
        [bgView pop_addAnimation:animation1 forKey:@"hidden"];
        animation1.completionBlock = ^(POPAnimation *anim, BOOL finished) {
            
            [bgView removeFromSuperview];
            
        };
        
    };
    
    [bgView addSubview:alterView];
    
    
    alterView.center = CGPointMake(WIDTH/2.0, HEIGHT/2.0);
    
}
@end
