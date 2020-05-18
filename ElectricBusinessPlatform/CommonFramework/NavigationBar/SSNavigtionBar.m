//
//  SSNavigtionBar.m
//  SanCell
//
//  Created by Owen on 2019/5/13.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSNavigtionBar.h"
//#import "SSCenterNotiVC.h"
//#import "SSSearchVC.h"

@interface SSNavigtionBar ()<UITextFieldDelegate>


@end

@implementation SSNavigtionBar

//此处根据现实情况添加

- (instancetype)init{
    
    self = [super init];
    
    if (self) {
        
        self.leftBtn = [[ASButtonNode alloc] init];
        [self.leftBtn setImage:[UIImage imageNamed:BackBtnImg] forState:UIControlStateNormal];
        [self addSubnode:self.leftBtn];
        [self.leftBtn addTarget:self action:@selector(touchLeftBtn) forControlEvents:ASControlNodeEventTouchUpInside];
        
        self.rightBtn = [[ASButtonNode alloc] init];
        [self.rightBtn setImage:[UIImage imageNamed:ProductShareImg] forState:UIControlStateNormal];
        [self addSubnode:self.rightBtn];
        [self.rightBtn addTarget:self action:@selector(touchRightBtn) forControlEvents:ASControlNodeEventTouchUpInside];
        self.rightBtn.hidden = YES;
        
        self.title = [[ASTextNode alloc] init];
        [self addSubnode:self.title];
        
    }
    
    return self;
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize{
    
    self.leftBtn.style.preferredSize = CGSizeMake(NavigationBarHeight, NavigationBarHeight);
    self.rightBtn.style.preferredSize = CGSizeMake(SSdaption(50), NavigationBarHeight);
    self.title.style.maxWidth = ASDimensionMake(WIDTH - NavigationBarHeight - SSdaption(40));
    ASStackLayoutSpec *spec = [ASStackLayoutSpec horizontalStackLayoutSpec];
    
    if (self.searchbgNode) {
        
        self.rightBtn.style.spacingAfter = SSdaption(16);
        spec.children = @[self.leftBtn,self.searchbgNode,self.rightBtn];
    }else{
        
        ASStackLayoutSpec *rigthSpec = [ASStackLayoutSpec horizontalStackLayoutSpec];
        if (self.right1Btn) {
            self.right1Btn.style.preferredSize = CGSizeMake(WIDTH - SSdaption(50) - SSdaption(50), SSdaption(32));
            rigthSpec.children = @[self.right1Btn,self.rightBtn];
            rigthSpec.justifyContent = ASStackLayoutJustifyContentCenter;
            rigthSpec.alignItems = ASStackLayoutAlignItemsCenter;
            if (self.leftBtn) {
                spec.children = @[self.leftBtn, rigthSpec];
            } else {
                rigthSpec.style.spacingBefore = SSdaption(16);
                spec.child = rigthSpec;
            }
        }else{
            rigthSpec.child = self.rightBtn;
//            rigthSpec.style.spacingAfter = SSdaption(16);
            spec.justifyContent = ASStackLayoutJustifyContentSpaceBetween;
            spec.children = @[self.leftBtn,self.title,rigthSpec];
        }

    }
    spec.justifyContent = ASStackLayoutJustifyContentSpaceBetween;
    spec.alignItems = ASStackLayoutAlignItemsCenter;
    
    ASInsetLayoutSpec *endSpec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(StatusBarHeight, 0, 0, 0) child:spec];
    
    return endSpec;
    
}

- (void) setWhiteLeftBtn{
    
    [self.leftBtn setImage:[UIImage imageNamed:WhiteBackImg] forState:UIControlStateNormal];
    self.leftBtn.hidden = NO;
  

}

- (void) setBlackLeftBtn{
    
   [self.leftBtn setImage:[UIImage imageNamed:BackBtnImg] forState:UIControlStateNormal];
    self.leftBtn.hidden = NO;

}

- (void) setBlackServeBtn{
    
    [self.rightBtn setImage:[UIImage imageNamed:BlackServeBtnImg] forState:UIControlStateNormal];
    self.rightBtn.hidden = NO;
}

- (void) setWhiteServeBtn{
    
    [self.rightBtn setImage:[UIImage imageNamed:WHiteServeBtnImg] forState:UIControlStateNormal];
    self.rightBtn.hidden = NO;
}

- (void) setRightSkipBtn{
    
    [self.rightBtn setImage:[UIImage imageNamed:@"跳过.png"] forState:UIControlStateNormal];
     self.rightBtn.hidden = NO;
    self.leftBtn.hidden = YES;
}

- (void)setRightMyGroupsBtn {
    [self.rightBtn setImage:[UIImage imageNamed:@"视频-通讯录"] forState:UIControlStateNormal];
    self.rightBtn.hidden = NO;
}

- (void) setTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
     [self setNeedsLayout];
    
}

- (void) setLeftBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    self.leftBtn.hidden = NO;
    self.rightBtn.hidden = YES;
    
    [self setNeedsLayout];
}

- (void) setComplateRightBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    self.leftBtn.hidden = YES;
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    self.rightBtn.hidden = NO;
    [self.rightBtn setImage:[UIImage imageNamed:ComplateImg] forState:UIControlStateNormal];
    
    [self setNeedsLayout];
}

- (void) setWhiteLeftBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    [self.leftBtn setImage:[UIImage imageNamed:WhiteBackImg] forState:UIControlStateNormal];
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    self.leftBtn.hidden = NO;
    self.rightBtn.hidden = YES;
    
    [self setNeedsLayout];
}



- (void) setLeftBtnAndRightWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    self.leftBtn.hidden = NO;
    self.rightBtn.hidden = NO;
    
    [self setNeedsLayout];
}

- (void) setLeftBtnAndDelegatebtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    [self.rightBtn setImage:[UIImage imageNamed:AddressDeleteImg] forState:UIControlStateNormal];
    
    self.leftBtn.hidden = NO;
    self.rightBtn.hidden = NO;
    
    [self setNeedsLayout];
    
}

- (void) setLeftBtnAndEditbtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    [self.rightBtn setImage:[UIImage imageNamed:ShopCarEditImg] forState:UIControlStateNormal];
    [self.rightBtn setImage:[UIImage imageNamed:SHopCarFinishedImg] forState:UIControlStateSelected];
    
    self.leftBtn.hidden = NO;
    self.rightBtn.hidden = NO;
    
    [self setNeedsLayout];
    
}

- (void) setLeftBtnAndSearchBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    [self.rightBtn setImage:[UIImage imageNamed:SearchBtnImg] forState:UIControlStateNormal];
    
    self.leftBtn.hidden = NO;
    self.rightBtn.hidden = NO;
    
    self.searchbgNode = [[ASDisplayNode alloc] init];
    self.searchbgNode.userInteractionEnabled = YES;
    self.searchTextField = [[UITextField alloc] init];
    self.searchTextField.placeholder = @"请输入搜索内容";//[[DataManager lightData] readDefaultSearchName];
    self.searchTextField.delegate = self;
    self.searchTextField.returnKeyType = UIReturnKeyDone;
    self.searchTextField.font = SSRegularFont(14);
    self.searchTextField.frame = CGRectMake(SSdaption(20),
                                            0,
                                            WIDTH - SSdaption(60) - NavigationBarHeight - SSdaption(20),
                                            SSdaption(32));
    self.searchTextField.backgroundColor = [UIColor clearColor];
    self.searchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.searchbgNode.view addSubview: self.searchTextField];
        

    self.searchbgNode.backgroundColor = [UIColor searchBtnBgGrayColor];
    self.searchbgNode.layer.cornerRadius = SSdaption(4);
    [self addSubnode:self.searchbgNode];
    self.searchbgNode.style.preferredSize = CGSizeMake(WIDTH - SSdaption(60) - NavigationBarHeight, SSdaption(32));
    
    [self setNeedsLayout];
}

- (void) setLeftBtnAndNoSearchBtnWithTitle:(NSString *) title andAttribute:(NSDictionary *) dic{
    
    if ([dic allKeys].count != 0) {
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:dic];
    }else{
        
        self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    }
    
    [self.rightBtn setImage:[UIImage imageNamed:SearchBtnImg] forState:UIControlStateNormal];
    
    self.leftBtn.hidden = NO;
    self.rightBtn.hidden = NO;
    
    self.searchbgNode = [[ASDisplayNode alloc] init];
    self.searchbgNode.userInteractionEnabled = YES;
    self.searchTextField = [[UITextField alloc] init];
    self.searchTextField.placeholder = @"";
    self.searchTextField.delegate = self;
    self.searchTextField.returnKeyType = UIReturnKeyDone;
    self.searchTextField.font = SSRegularFont(14);
    self.searchTextField.frame = CGRectMake(SSdaption(20),
                                            0,
                                            WIDTH - SSdaption(60) - NavigationBarHeight - SSdaption(20),
                                            SSdaption(32));
    self.searchTextField.backgroundColor = [UIColor clearColor];
    self.searchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.searchbgNode.view addSubview: self.searchTextField];
        

    self.searchbgNode.backgroundColor = [UIColor searchBtnBgGrayColor];
    self.searchbgNode.layer.cornerRadius = SSdaption(4);
    [self addSubnode:self.searchbgNode];
    self.searchbgNode.style.preferredSize = CGSizeMake(WIDTH - SSdaption(60) - NavigationBarHeight, SSdaption(32));
    
    [self setNeedsLayout];

}

- (void) setSearchBtnAndHomeTitle:(NSString *) title {
 
    self.title.attributedText = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor wordsBlackColor]}];
    self.title.hidden = YES;
    
    self.right1Btn = [[ASButtonNode alloc] init];
    self.right1Btn.backgroundColor = [UIColor grade10AchromaticColor];
    self.right1Btn.layer.cornerRadius = SSdaption(32)/2.0;
    self.right1Btn.clipsToBounds = YES;
    [self addSubnode:self.right1Btn];
    [self.right1Btn addTarget:self action:@selector(touchRigh1tBtn) forControlEvents:ASControlNodeEventTouchUpInside];
    
    UIImageView *searchTag = [[UIImageView alloc] initWithImage:[UIImage imageNamed:HomePageAllShowSearchImg]];
    [searchTag sizeToFit];
    searchTag.frame = CGRectMake(SSdaption(12),
                                 SSdaption(32)/2.0 - searchTag.frame.size.height/2.0,
                                 searchTag.frame.size.width,
                                 searchTag.frame.size.height);
    [self.right1Btn.view addSubview:searchTag];
    searchTag.userInteractionEnabled = YES;
    
    UILabel *searchLab = [[UILabel alloc] init];
    searchLab.font = SSRegularFont(13);
    searchLab.textColor = [UIColor grade6AchromaticColor];
    searchLab.text = [[DataManager lightData] readDefaultSearchName];
    [searchLab sizeToFit];
    searchLab.frame = CGRectMake(CGRectGetMaxX(searchTag.frame) + SSdaption(8),
                                 searchTag.center.y - searchLab.frame.size.height/2.0,
                                 searchLab.frame.size.width,
                                 searchLab.frame.size.height);
    [self.right1Btn.view addSubview:searchLab];

    
    [self.rightBtn setImage:[UIImage imageNamed:HomePageNotiPromBlackImg] forState:UIControlStateNormal];
    self.leftBtn.hidden = YES;
    self.rightBtn.hidden = NO;
    
    [self setNeedsLayout];
    
}

- (void)setSearchWithLeftBtn {
    
    self.right1Btn = [[ASButtonNode alloc] init];
    self.right1Btn.backgroundColor = [UIColor grade10AchromaticColor];
    self.right1Btn.layer.cornerRadius = SSdaption(32)/2.0;
    self.right1Btn.clipsToBounds = YES;
    [self addSubnode:self.right1Btn];
    [self.right1Btn addTarget:self action:@selector(touchRigh1tBtn) forControlEvents:ASControlNodeEventTouchUpInside];
    
    UIImageView *searchTag = [[UIImageView alloc] initWithImage:[UIImage imageNamed:HomePageAllShowSearchImg]];
    [searchTag sizeToFit];
    searchTag.frame = CGRectMake(SSdaption(12),
                                 SSdaption(32)/2.0 - searchTag.frame.size.height/2.0,
                                 searchTag.frame.size.width,
                                 searchTag.frame.size.height);
    [self.right1Btn.view addSubview:searchTag];
    searchTag.userInteractionEnabled = YES;
    
    UILabel *searchLab = [[UILabel alloc] init];
    searchLab.font = SSRegularFont(13);
    searchLab.textColor = [UIColor grade6AchromaticColor];
    searchLab.text = @"请输入搜索内容";//[[DataManager lightData] readDefaultSearchName];
    [searchLab sizeToFit];
    searchLab.frame = CGRectMake(CGRectGetMaxX(searchTag.frame) + SSdaption(8),
                                 searchTag.center.y - searchLab.frame.size.height/2.0,
                                 searchLab.frame.size.width,
                                 searchLab.frame.size.height);
    [self.right1Btn.view addSubview:searchLab];

    self.leftBtn.hidden = NO;
    [self.rightBtn setImage:[UIImage imageNamed:BannerBgTypeGrayImage] forState:UIControlStateNormal];
    self.rightBtn.hidden = NO;
    
    [self setNeedsLayout];
    
}

- (void) touchLeftBtn{
    
    [self.delegate didSelectedLeftBarItem];
}

- (void) touchRightBtn{
    
    self.rightBtn.selected = !self.rightBtn.selected;
    
    [self.delegate didSelectedRightBarItem];
}

- (void) setProductSetting{
    
    self.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0];
    self.title.alpha = 0;
    
}

- (void) changeNavBarAlpha:(CGFloat) number{
    
    if (number <= 1 && number >= 0) {
        
        self.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:number];
    }
    
}


- (void) showHomeNav{
    
    POPBasicAnimation *animation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    animation.fromValue = @(0);
    animation.toValue = @(1);
    [self pop_addAnimation:animation forKey:@"show"];
    
}

- (void) hiddenHomeNav{
    
    POPBasicAnimation *animation = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    animation.fromValue = @(1);
    animation.toValue = @(0);
    [self pop_addAnimation:animation forKey:@"hidden"];
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self.searchTextField resignFirstResponder];
    return YES;
}

- (void) touchRigh1tBtn{
    
//    SSSearchVC *vc = [[SSSearchVC alloc] init];
//    [[VCManger mainVC] pushVC:vc animate:YES];

}
@end
