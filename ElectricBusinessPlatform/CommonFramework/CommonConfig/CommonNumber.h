//
//  CommonNumber.h
//  CAMELLIAE
//
//  Created by 张越 on 16/3/18.
//  Copyright © 2016年 张越. All rights reserved.
//

#ifndef CommonNumber_h
#define CommonNumber_h

/**比例设置*/
#define HEIGHT [UIScreen mainScreen].bounds.size.height

#define WIDTH  [UIScreen mainScreen].bounds.size.width

#define kBaseWidth 375

#define NavigationBarHeight  44*(WIDTH/kBaseWidth)
#define UITabBarHeight       49*(WIDTH/kBaseWidth)
#define StatusBarHeight     (HEIGHT >= 812.0 ? 44*(WIDTH/kBaseWidth) : 20*(WIDTH/kBaseWidth))
#define SafeAreaBottomHeight (HEIGHT >= 812.0 ? 34*(WIDTH/kBaseWidth) : 4*(WIDTH/kBaseWidth))

#pragma UI设计图尺寸



#define proportion WIDTH/kBaseWidth

//宏定义内联函数
#define Inline static inline
#pragma mark --设置比例
//实际屏幕宽度和设计图宽度的比例
Inline CGFloat SSdaptionWidth() {
    return WIDTH/kBaseWidth;
}

//传入设计图尺寸标注，转化为实际屏幕尺寸标注
Inline CGFloat SSdaption(CGFloat x) {
    return x * SSdaptionWidth();
}
//传入设计图size，转化为实际屏幕的CGsize返回
Inline CGSize SSdaptionSize(CGFloat width, CGFloat height) {
    CGFloat newWidth = width * SSdaptionWidth();
    CGFloat newHeight = height * SSdaptionWidth();
    return CGSizeMake(newWidth, newHeight);
}
//传入设计图Point，转化成CGpoint返回
Inline CGPoint SSadaptionPoint(CGFloat x, CGFloat y) {
    CGFloat newX = x * SSdaptionWidth();
    CGFloat newY = y * SSdaptionWidth();
    return  CGPointMake(newX, newY);
}
//传入设计图Rect，返回已适配真实屏幕的CGrect
Inline CGRect SSdaptionRect(CGFloat x, CGFloat y, CGFloat width, CGFloat height){
    CGFloat newX = x*SSdaptionWidth();
    CGFloat newY = y*SSdaptionWidth();
    CGFloat newW = width*SSdaptionWidth();
    CGFloat newH = height*SSdaptionWidth();
    return CGRectMake(newX, newY, newW, newH);
}

Inline CGRect SSdaptionRectFromFrame(CGRect frame){
    CGFloat newX = frame.origin.x*SSdaptionWidth();
    CGFloat newY = frame.origin.y*SSdaptionWidth();
    CGFloat newW = frame.size.width*SSdaptionWidth();
    CGFloat newH = frame.size.height*SSdaptionWidth();
    return CGRectMake(newX, newY, newW, newH);
}



//字体适配：
Inline UIFont * SSRegularFont(CGFloat font){
    return [UIFont systemFontOfSize:font*SSdaptionWidth() weight: UIFontWeightRegular];
//    return [UIFont fontWithName:@"DIN-Regular" size:font*SSdaptionWidth()];

}

Inline UIFont * SSNormalRegularFont(CGFloat font) {
    return [UIFont fontWithName:@"PingFangSC-Regular" size:font*SSdaptionWidth()];
}

//加粗字体适配
Inline UIFont * SSMediumFont(CGFloat font){
    
    return [UIFont fontWithName:@"HelveticaNeue-Medium" size:font*SSdaptionWidth()];
//    return [UIFont fontWithName:@"DIN-Medium" size:font*SSdaptionWidth()];

}

Inline UIFont * SSRegularNumFont(CGFloat font){
    return [UIFont fontWithName:@"DIN-Regular" size:font*SSdaptionWidth()];
    
}
//加粗字体适配
Inline UIFont * SSMediumNumFont(CGFloat font){
    
    return [UIFont fontWithName:@"DIN-Medium" size:font*SSdaptionWidth()];
    
}


#endif /* CommonNumber_h */
