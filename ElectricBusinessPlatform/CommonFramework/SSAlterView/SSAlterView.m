//
//  SSAlterView.m
//  SanCell
//
//  Created by Owen on 2019/7/19.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSAlterView.h"
#define LeftMargin 40
#define PromHeight 150
#define PromHeight2 192
#define DescLeftMargin 20
#define BottomMargin 20

@interface SSAlterView ()

@property (nonatomic,strong) UILabel *topLab;

@property (nonatomic,strong) UIImageView *currentImage;

@property (nonatomic,strong) UILabel *descLab;

@property (nonatomic,strong) UIButton *cancelBtn;

@property (nonatomic,strong) UIButton *confirmbtn;

@property (nonatomic,assign) BOOL otherType;

@end

@implementation SSAlterView

- (instancetype)initWithNormalAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle{
    
    self = [super init];
    
    if (self) {
        
        self.frame = CGRectMake(0,
                                0,
                                WIDTH - SSdaption(LeftMargin)*2,
                                SSdaption(PromHeight));
        self.backgroundColor = [UIColor whiteColor];
        self.topLab = [[UILabel alloc] init];
        self.topLab.text = title;
        self.topLab.font = SSMediumFont(15);
        self.topLab.textColor = [UIColor primaryAchromaticColor];
        [self.topLab sizeToFit];
        [self addSubview:self.topLab];
        
        self.layer.cornerRadius = SSdaption(8);
        
        self.descLab = [[UILabel alloc] init];
        self.descLab.text = desc;
        self.descLab.font = SSRegularFont(13);
        self.descLab.textColor = [UIColor primaryAchromaticColor];
        self.descLab.textAlignment = NSTextAlignmentCenter;
        self.descLab.numberOfLines = 0;
        CGRect rect= [self.descLab.text boundingRectWithSize:CGSizeMake(WIDTH - SSdaption(LeftMargin)*2 - SSdaption(DescLeftMargin)*2, HEIGHT) options:NSStringDrawingUsesLineFragmentOrigin
                                                  attributes:@{NSFontAttributeName:SSRegularFont(13)} context:nil];
        self.descLab.frame = CGRectMake(SSdaption(DescLeftMargin),
                                        0,
                                        WIDTH - SSdaption(LeftMargin)*2 - SSdaption(DescLeftMargin)*2,
                                        rect.size.height);
        
        [self addSubview:self.descLab];
        
        self.cancelBtn = [[UIButton alloc] init];
        self.cancelBtn.layer.cornerRadius = SSdaption(32)/2.0;
        self.cancelBtn.layer.borderWidth = SSdaption(0.5);
        self.cancelBtn.layer.borderColor = [UIColor grade5AchromaticColor].CGColor;
        self.cancelBtn.titleLabel.font = SSRegularFont(13);
        [self.cancelBtn setTitle:cancelTitle forState:UIControlStateNormal];
        [self.cancelBtn setTitleColor:[UIColor primaryAchromaticColor] forState:UIControlStateNormal];
        [self.cancelBtn addTarget:self action:@selector(touchCancel) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.cancelBtn];
        
        self.confirmbtn = [[UIButton alloc] init];
        self.confirmbtn.layer.cornerRadius = SSdaption(32)/2.0;
        self.confirmbtn.backgroundColor = [UIColor primaryRedColor];
        [self.confirmbtn setTitle:confrimTitle forState:UIControlStateNormal];
        self.confirmbtn.titleLabel.font = SSRegularFont(13);
        [self.confirmbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:self.confirmbtn];
        [self.confirmbtn addTarget:self action:@selector(touchConfirm) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    
    return self;
}

- (instancetype)initWithOtherAltertitle:(NSString *) title andDesc:(NSString *) desc andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle{
    
    self = [super init];
    
    if (self) {
        self.otherType = YES;
    
        self.frame = CGRectMake(0,
                                0,
                                WIDTH - SSdaption(LeftMargin)*2,
                                SSdaption(PromHeight2));
        self.backgroundColor = [UIColor whiteColor];
        self.topLab = [[UILabel alloc] init];
        self.topLab.text = title;
        self.topLab.font = SSMediumFont(15);
        self.topLab.textColor = [UIColor primaryAchromaticColor];
        [self.topLab sizeToFit];
        [self addSubview:self.topLab];
        
        self.layer.cornerRadius = SSdaption(8);
        
        self.descLab = [[UILabel alloc] init];
        self.descLab.text = desc;
        self.descLab.font = SSRegularFont(13);
        self.descLab.textColor = [UIColor primaryAchromaticColor];
        self.descLab.textAlignment = NSTextAlignmentCenter;
        self.descLab.numberOfLines = 0;
        CGRect rect= [self.descLab.text boundingRectWithSize:CGSizeMake(WIDTH - SSdaption(LeftMargin)*2 - SSdaption(DescLeftMargin)*2, HEIGHT) options:NSStringDrawingUsesLineFragmentOrigin
                                                  attributes:@{NSFontAttributeName:SSRegularFont(13)} context:nil];
        self.descLab.frame = CGRectMake(SSdaption(DescLeftMargin),
                                        0,
                                        WIDTH - SSdaption(LeftMargin)*2 - SSdaption(DescLeftMargin)*2,
                                        rect.size.height);
        
        [self addSubview:self.descLab];
        
        self.confirmbtn = [[UIButton alloc] init];
        self.confirmbtn.layer.cornerRadius = SSdaption(40)/2.0;
        self.confirmbtn.backgroundColor = [UIColor primaryRedColor];
        [self.confirmbtn setTitle:confrimTitle forState:UIControlStateNormal];
        self.confirmbtn.titleLabel.font = SSMediumFont(16);
        [self.confirmbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:self.confirmbtn];
        [self.confirmbtn addTarget:self action:@selector(touchConfirm) forControlEvents:UIControlEventTouchUpInside];
        
        if (cancelTitle.length > 0) {
            
            self.cancelBtn = [[UIButton alloc] init];
            self.cancelBtn.titleLabel.font = SSRegularFont(13);
            [self.cancelBtn setTitle:cancelTitle forState:UIControlStateNormal];
            [self.cancelBtn setTitleColor:[UIColor grade3AchromaticColor] forState:UIControlStateNormal];
            [self.cancelBtn addTarget:self action:@selector(touchCancel) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:self.cancelBtn];
        }
        
        
    }
    
    return self;
}

- (instancetype)initWithNormalAltertitle:(NSString *) title andDesc:(NSString *) desc andImageUrl:(NSString *) url andCancelBtntitle:(NSString *) cancelTitle andConfirmTitle:(NSString *) confrimTitle{
    
    self = [super init];
    
    if (self) {
        
        self.frame = CGRectMake(0,
                                0,
                                WIDTH - SSdaption(LeftMargin)*2,
                                SSdaption(PromHeight));
        self.backgroundColor = [UIColor whiteColor];
        self.topLab = [[UILabel alloc] init];
        self.topLab.text = title;
        self.topLab.font = SSMediumFont(15);
        self.topLab.textColor = [UIColor primaryAchromaticColor];
        [self.topLab sizeToFit];
        [self addSubview:self.topLab];
        
        self.layer.cornerRadius = SSdaption(8);
        
        self.currentImage = [[UIImageView alloc] init];
        self.currentImage.layer.cornerRadius = SSdaption(80)/2.0;
        self.currentImage.clipsToBounds = YES;
        [self addSubview:self.currentImage];
        [NetWorkTask setImageView:self.currentImage WithURL:url placeholderImage:nil];
        
        
        self.descLab = [[UILabel alloc] init];
        self.descLab.text = desc;
        self.descLab.font = SSRegularFont(13);
        self.descLab.textColor = [UIColor primaryAchromaticColor];
        self.descLab.textAlignment = NSTextAlignmentCenter;
        self.descLab.numberOfLines = 0;
        CGRect rect= [self.descLab.text boundingRectWithSize:CGSizeMake(WIDTH - SSdaption(LeftMargin)*2 - SSdaption(DescLeftMargin)*2, HEIGHT) options:NSStringDrawingUsesLineFragmentOrigin
                                                  attributes:@{NSFontAttributeName:SSRegularFont(13)} context:nil];
        self.descLab.frame = CGRectMake(SSdaption(DescLeftMargin),
                                        0,
                                        WIDTH - SSdaption(LeftMargin)*2 - SSdaption(DescLeftMargin)*2,
                                        rect.size.height);
        
        [self addSubview:self.descLab];
        
        self.cancelBtn = [[UIButton alloc] init];
        self.cancelBtn.layer.cornerRadius = SSdaption(32)/2.0;
        self.cancelBtn.layer.borderWidth = SSdaption(0.5);
        self.cancelBtn.layer.borderColor = [UIColor primaryRedColor].CGColor;
        self.cancelBtn.titleLabel.font = SSRegularFont(14);
        [self.cancelBtn setTitle:cancelTitle forState:UIControlStateNormal];
        [self.cancelBtn setTitleColor:[UIColor grade3AchromaticColor] forState:UIControlStateNormal];
        [self.cancelBtn addTarget:self action:@selector(touchCancel) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.cancelBtn];
        
        self.confirmbtn = [[UIButton alloc] init];
        self.confirmbtn.layer.cornerRadius = SSdaption(32)/2.0;
        self.confirmbtn.backgroundColor = [UIColor primaryRedColor];
        [self.confirmbtn setTitle:confrimTitle forState:UIControlStateNormal];
        self.confirmbtn.titleLabel.font = SSRegularFont(13);
        [self.confirmbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:self.confirmbtn];
        [self.confirmbtn addTarget:self action:@selector(touchConfirm) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    
    return self;

}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    if (self.otherType) {
        
        self.topLab.frame = CGRectMake(self.frame.size.width/2.0 - self.topLab.frame.size.width/2.0,
                                       SSdaption(12),
                                       self.topLab.frame.size.width,
                                       self.topLab.frame.size.height);
        
        if (self.descLab.text.length == 0) {
            
            self.descLab.frame = CGRectMake(self.descLab.frame.origin.x,
                                            CGRectGetMaxY(self.topLab.frame),
                                            self.descLab.frame.size.width,
                                            self.descLab.frame.size.height);
        }else{
            
            self.descLab.frame = CGRectMake(self.descLab.frame.origin.x,
                                            CGRectGetMaxY(self.topLab.frame) + SSdaption(12),
                                            self.descLab.frame.size.width,
                                            self.descLab.frame.size.height);
            
        }
        
        self.confirmbtn.frame = CGRectMake(self.frame.size.width/2.0 - SSdaption(215)/2.0,
                                           CGRectGetMaxY(self.descLab.frame) + SSdaption(24),
                                           SSdaption(215),
                                           SSdaption(40));
        
        if (self.cancelBtn) {
          
            [self.cancelBtn sizeToFit];
            self.cancelBtn.frame = CGRectMake(self.frame.size.width/2.0 - self.cancelBtn.frame.size.width/2.0,
                                              CGRectGetMaxY(self.confirmbtn.frame) + SSdaption(24),
                                              self.cancelBtn.frame.size.width,
                                              self.cancelBtn.frame.size.height);
            
            self.frame = CGRectMake(self.frame.origin.x,
                                    self.frame.origin.y,
                                    WIDTH - SSdaption(LeftMargin)*2,
                                    CGRectGetMaxY(self.cancelBtn.frame) + SSdaption(BottomMargin));
        }else{
            
            self.frame = CGRectMake(self.frame.origin.x,
                                    self.frame.origin.y,
                                    WIDTH - SSdaption(LeftMargin)*2,
                                    CGRectGetMaxY(self.confirmbtn.frame) + SSdaption(BottomMargin));
            
        }

        
    }else{
     
        if (self.currentImage) {
            
            self.topLab.frame = CGRectMake(self.frame.size.width/2.0 - self.topLab.frame.size.width/2.0,
                                           SSdaption(24),
                                           self.topLab.frame.size.width,
                                           self.topLab.frame.size.height);
            
            self.currentImage.frame = CGRectMake(self.frame.size.width/2.0 - SSdaption(80)/2.0,
                                                 CGRectGetMaxY(self.topLab.frame) + SSdaption(16),
                                                 SSdaption(80),
                                                 SSdaption(80));
            
            if (self.descLab.text.length == 0) {
                
                self.descLab.frame = CGRectMake(self.descLab.frame.origin.x,
                                                CGRectGetMaxY(self.currentImage.frame) + SSdaption(8),
                                                self.descLab.frame.size.width,
                                                self.descLab.frame.size.height);
            }else{
                
                self.descLab.frame = CGRectMake(self.descLab.frame.origin.x,
                                                CGRectGetMaxY(self.currentImage.frame) + SSdaption(8),
                                                self.descLab.frame.size.width,
                                                self.descLab.frame.size.height);
                
            }
            
            self.cancelBtn.frame = CGRectMake(SSdaption(26),
                                              CGRectGetMaxY(self.descLab.frame) + SSdaption(24),
                                              SSdaption(102),
                                              SSdaption(32));
            
            self.confirmbtn.frame = CGRectMake(self.frame.size.width - SSdaption(26) - SSdaption(102),
                                               CGRectGetMaxY(self.descLab.frame) + SSdaption(24),
                                               SSdaption(102),
                                               SSdaption(32));
            
            self.frame = CGRectMake(self.frame.origin.x,
                                    self.frame.origin.y,
                                    WIDTH - SSdaption(LeftMargin)*2,
                                    CGRectGetMaxY(self.confirmbtn.frame) + SSdaption(BottomMargin));

            
        }else{
            
            self.topLab.frame = CGRectMake(self.frame.size.width/2.0 - self.topLab.frame.size.width/2.0,
                                           SSdaption(24),
                                           self.topLab.frame.size.width,
                                           self.topLab.frame.size.height);
            
            if (self.descLab.text.length == 0) {
                
                self.descLab.frame = CGRectMake(self.descLab.frame.origin.x,
                                                CGRectGetMaxY(self.topLab.frame),
                                                self.descLab.frame.size.width,
                                                self.descLab.frame.size.height);
            }else{
                
                self.descLab.frame = CGRectMake(self.descLab.frame.origin.x,
                                                CGRectGetMaxY(self.topLab.frame) + SSdaption(12),
                                                self.descLab.frame.size.width,
                                                self.descLab.frame.size.height);
                
            }
            
            self.cancelBtn.frame = CGRectMake(SSdaption(26),
                                              CGRectGetMaxY(self.descLab.frame) + SSdaption(24),
                                              SSdaption(102),
                                              SSdaption(32));
            
            self.confirmbtn.frame = CGRectMake(self.frame.size.width - SSdaption(26) - SSdaption(102),
                                               CGRectGetMaxY(self.descLab.frame) + SSdaption(24),
                                               SSdaption(102),
                                               SSdaption(32));
            
            self.frame = CGRectMake(self.frame.origin.x,
                                    self.frame.origin.y,
                                    WIDTH - SSdaption(LeftMargin)*2,
                                    CGRectGetMaxY(self.confirmbtn.frame) + SSdaption(BottomMargin));

            
        }
        
    }
    
}

- (void) touchCancel{
    
    self.cancelBlock();
}

- (void) touchConfirm{
    
    self.confirmBlock();
}

@end
