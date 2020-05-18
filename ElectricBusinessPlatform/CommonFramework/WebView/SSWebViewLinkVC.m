//
//  SSWebViewLinkVC.m
//  SanCell
//
//  Created by Owen on 2019/8/27.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSWebViewLinkVC.h"
#import "VCManger.h"
#import "AFNetworking.h"
#import "CommonNumber.h"
#import<AssetsLibrary/AssetsLibrary.h>
#import<CoreLocation/CoreLocation.h>
#import "SSShareManager.h"
#import <WebKit/WebKit.h>
//#import "SSProductDetailVC.h"
//#import "SSOneYuanBuyVC.h"

@interface SSWebViewLinkVC ()<NavigationBarProtocol,UIGestureRecognizerDelegate,UIGestureRecognizerDelegate,WKNavigationDelegate,WKUIDelegate,WKScriptMessageHandler>

@property (nonatomic,strong) WKWebView *webView;

@end

@implementation SSWebViewLinkVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    [SVProgressHUD dismiss];
    [self showNavBar];
    self.navBar.delegate = self;
    if (self.isVIPRights) {
        [self.navBar setWhiteLeftBtnWithTitle:@"权益详情" andAttribute:@{NSFontAttributeName:SSRegularFont(15),NSForegroundColorAttributeName:[UIColor whiteColor]}];
        self.navBar.backgroundColor = [UIColor clearColor];
        UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:WebVIPRightTopImg]];
        image.frame = CGRectMake(0,
                                 0,
                                 WIDTH,
                                 NavigationBarHeight + StatusBarHeight);
        image.clipsToBounds = YES;
        [self.contentNode.view addSubview:image];
        
    }else{
        if (self.WhiteCurrentTitle.length > 0) {
         
            [self.navBar setWhiteLeftBtnWithTitle:_WhiteCurrentTitle andAttribute:@{NSFontAttributeName:SSRegularFont(15),NSForegroundColorAttributeName:[UIColor whiteColor]}];
        }else{
            
            if (_GoldCurrentTitle.length > 0) {
                
                [self.navBar setWhiteLeftBtnWithTitle:_GoldCurrentTitle andAttribute:@{NSFontAttributeName:SSMediumFont(15),NSForegroundColorAttributeName:[UIColor networkColor:@"#E6B27E"]}];
            }else{
              
                [self.navBar setLeftBtnWithTitle:self.currentTitle andAttribute:@{}];
            }

        }
       
    }
    

    
    NSArray * types = @[WKWebsiteDataTypeMemoryCache,WKWebsiteDataTypeDiskCache]; // 9.0之后才有的
    NSSet *websiteDataTypes = [NSSet setWithArray:types];
    NSDate *dateFrom = [NSDate dateWithTimeIntervalSince1970:0];
    [[WKWebsiteDataStore defaultDataStore] removeDataOfTypes:websiteDataTypes modifiedSince:dateFrom completionHandler:^{
    }];
    
    
    if (@available(iOS 11.0, *)) {
        [[UIScrollView appearance] setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentAlways];
    } else {
        // Fallback on earlier versions
    }
    
    if (self.isDetailMes) {
        self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0,
                                                                   StatusBarHeight + NavigationBarHeight,
                                                                   WIDTH,
                                                                   HEIGHT - (StatusBarHeight + NavigationBarHeight))];
        
        self.webView.backgroundColor = [UIColor whiteColor];
        self.webView.scrollView.bounces = NO;
        self.webView.navigationDelegate = self;
        self.webView.UIDelegate = self;
        self.webView.scrollView.alwaysBounceHorizontal = NO;
        NSString *skey = [[DataManager lightData] readSkey];
        NSNumber *reqTime = [NSNumber numberWithInt:[AppGroup getCurrentDate]];
        NSString *hashToken = [NSString getEncryptStringfrom:@[skey,reqTime]];
        NSURL *newUrl = [NSURL URLWithString: self.url];
        
        NSString *body = [NSString stringWithFormat: @"reqTime=%@&skey=%@&clientId=1&hashToken=%@",reqTime,skey,hashToken];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL: newUrl];
        [request setHTTPMethod: @"POST"];
        [request setHTTPBody: [body dataUsingEncoding: NSUTF8StringEncoding]];
        [self.webView loadRequest: request];
        [self.contentNode.view addSubview:self.webView];
        UILongPressGestureRecognizer * longPressed = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressed:)];
        longPressed.delegate = self;
        [self.webView addGestureRecognizer:longPressed];
        
        
    }else{
        
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        WKUserContentController *userController = [[WKUserContentController alloc] init];
        configuration.userContentController = userController;

        self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0,
                                                                   StatusBarHeight + NavigationBarHeight,
                                                                   WIDTH,
                                                                   HEIGHT - (StatusBarHeight + NavigationBarHeight)) configuration:configuration];
        [userController addScriptMessageHandler:self name:@"shareInfo"];
        NSURL *url = [NSURL URLWithString:self.url];
        self.webView.scrollView.bounces = NO;
        self.webView.navigationDelegate = self;
        self.webView.UIDelegate = self;
        self.webView.scrollView.alwaysBounceHorizontal = NO;
        [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
        [self.contentNode.view addSubview:self.webView];
        

    }
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillChangeFrameNotification object:nil];
}

- (void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillChangeFrameNotification object:nil];

}

- (void)keyboardWillShow:(NSNotification *)notification {
    NSDictionary *userInfo = notification.userInfo;
    
    double duration = [userInfo[UIKeyboardAnimationDurationUserInfoKey] doubleValue];
    
    CGRect keyboardF = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    
    [UIView animateWithDuration:duration animations:^{
        
        if (keyboardF.origin.y > CGRectGetHeight(self.view.frame)) {
        
            CGRect frame = self.webView.frame;
            frame.origin.y = CGRectGetHeight(self.view.frame) - CGRectGetHeight(self.webView.frame);
            self.webView.frame = frame;
        }
        else {
            
            CGRect frame = self.webView.frame;
            frame.origin.y = keyboardF.origin.y - CGRectGetHeight(self.webView.frame);
            self.webView.frame = frame;
        }
    }];
}
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
        
}


- (void)longPressed:(UITapGestureRecognizer*)recognizer{
    
    //只在长按手势开始的时候才去获取图片的url
    if (recognizer.state != UIGestureRecognizerStateBegan) {
        return;
    }
    
    CGPoint touchPoint = [recognizer locationInView:self.webView];
    
    NSString *js = [NSString stringWithFormat:@"document.elementFromPoint(%f, %f).src", touchPoint.x, touchPoint.y];
//    NSString *urlToSave = [self.webView1 stringByEvaluatingJavaScriptFromString:js];
    
//    if (urlToSave.length == 0) {
//        return;
//    }
//
//    NSLog(@"获取到图片地址：%@",urlToSave);
    
    
    ALAuthorizationStatus author = [ALAssetsLibrary authorizationStatus];
    
    if (author ==kCLAuthorizationStatusRestricted || author ==kCLAuthorizationStatusDenied){
        
        //无权限 引导去开启
        
        NSURL *url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        
        if ([[UIApplication sharedApplication] canOpenURL:url]) {
            
            [[UIApplication sharedApplication] openURL:url];
            
        }
    }else{
        
        UIAlertController *actionSheetController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction *showAllInfoAction = [UIAlertAction actionWithTitle:@"保存图片" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
//            UIImageWriteToSavedPhotosAlbum([UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:urlToSave]]], self, nil, nil);
        }];
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [actionSheetController addAction:cancelAction];
        [actionSheetController addAction:showAllInfoAction];
        
        [self presentViewController:actionSheetController animated:YES completion:nil];
        
        
    }
    
    
}


-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

/*
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    //判断是否是单击

    
    return YES;
}*/



- (void) didSelectedLeftBarItem{
   

    
    if ([self.webView canGoBack]) {
        
        if (self.backNativeVC) {
            [[VCManger mainVC] dismissCurrentVC];
        }else{
            [self.webView goBack];
        }
        
    }else{
        
        [[VCManger mainVC] dismissCurrentVC];
    }
    
    
}



#pragma mark - UIWebViewDelegate
/*
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [self stopLoading];
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    [self stopLoading];
}*/


- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    
 
    
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    
 
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    
        
        decisionHandler(WKNavigationResponsePolicyCancel);
        
}


@end
