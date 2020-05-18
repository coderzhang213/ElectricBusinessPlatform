//
//  UIColor+SSExpand.m
//  SanCell
//
//  Created by Owen on 2019/6/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "UIColor+SSExpand.h"

@implementation UIColor (SSExpand)

+ (UIColor *)colorWithHexString:(NSString *)color {
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];

    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // 判断前缀
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor clearColor];
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];

    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:1.0f];
}

+ (UIColor *)lineGrayColor {
    return [self colorWithHexString:@"#CCCCCC"];
}

+ (UIColor *)wordsBlackColor {
    return [self colorWithHexString:@"#131413"];
}

+ (UIColor *)placeHolderColor {
    return [self colorWithHexString:@"#BEBFBE"];
}

+ (UIColor *)mainGreenColor {
    return [self colorWithHexString:@"#0F9954"];
}

+ (UIColor *)mainRedColor {
    return [self colorWithHexString:@"#FA1905"];
}

+ (UIColor *)loginBtnGreenColor {
    return [self colorWithHexString:@"#10BF6D"];
}

+ (UIColor *)lightGreenColor {
    return [self colorWithHexString:@"#0F9954"];
}

+ (UIColor *)numberGreenColor {
    return [self colorWithHexString:@"#12B362"];
}

+ (UIColor *)darkGreenColor {
    return [self colorWithHexString:@"#067342"];
}

+ (UIColor *)darkTopTagBrownColor {
    return [self colorWithHexString:@"#CAAC8D"];
}

+ (UIColor *)tagBrownColor {
    return [self colorWithHexString:@"#BE9773"];
}

+ (UIColor *)typeGrayColor {
    return [self colorWithHexString:@"#929392"];
}

+ (UIColor *)typeBlackColor {
    return [self colorWithHexString:@"#222222"];
}

+ (UIColor *)buyTtitleColor {
    return [self colorWithHexString:@"#F5C48B"];
}

+ (UIColor *)newBrownColor {
    return [self colorWithHexString:@"#DDA759"];
}

+ (UIColor *)vipRedColor {
    return [self colorWithHexString:@"#B94125"];
}

+ (UIColor *)vipBrownColor {
    return [self colorWithHexString:@"#CCAA7A"];
}

+ (UIColor *)vipNoselectDarkGrayColor {
    return [self colorWithHexString:@"#7E807E"];
}

+ (UIColor *)promRedColor {
    return [self colorWithHexString:@"#E6372E"];
}

+ (UIColor *)searchBtnBgGrayColor {
    return [self colorWithHexString:@"#F8F8F8"];
}

+ (UIColor *)searchLeftBtnBgGrayColor {
    return [self colorWithHexString:@"#F7F8F7"];
}

#pragma mark - todo
+ (UIColor *)primaryAchromaticColor {
    return [self colorWithHexString:@"#242526"];
}

+ (UIColor *)SecondaryAchromaticColor {
    return [self colorWithHexString:@"#323333"];
}

+ (UIColor *)grade3AchromaticColor {
    return [self colorWithHexString:@"#555659"];
}

+ (UIColor *)grade4AchromaticColor {
    return [self colorWithHexString:@"#87898C"];
}

+ (UIColor *)grade5AchromaticColor {
    return [self colorWithHexString:@"#BABCBF"];
}

+ (UIColor *)grade6AchromaticColor {
    return [self colorWithHexString:@"#D4D6D9"];
}

+ (UIColor *)grade7AchromaticColor {
    return [self colorWithHexString:@"#E8EAED"];
}

+ (UIColor *)grade8AchromaticColor {
    return [self colorWithHexString:@"#F0F2F5"];
}

+ (UIColor *)grade9AchromaticColor {
    return [self colorWithHexString:@"#F5F7FA"];
}

+ (UIColor *)grade10AchromaticColor {
    return [self colorWithHexString:@"#f5f7f7"];
}

+ (UIColor *)grade11AchromaticColor {
    return [self colorWithHexString:@"#f5f7f7"];
}

+ (UIColor *)grade12AchromaticColor {
    return [self colorWithHexString:@"#87898C"];
}

+ (UIColor *)grade13AchromaticColor {
    return [self colorWithHexString:@"#FAFCFC"];
}

+ (UIColor *)grade14AchromaticColor {
    return [self colorWithHexString:@"#F2F4F5"];
}

//green
+ (UIColor *)primaryRedColor {
    return [self colorWithHexString:@"#fa1905"];
}

+ (UIColor *)SecondaryRedColor {
    return [self colorWithHexString:@"#05e085"];
}

+ (UIColor *)grade3RedColor {
    return [self colorWithHexString:@"#11a660"];
}

+ (UIColor *)grade4RedColor {
    return [self colorWithHexString:@"#aee6c1"];
}

+ (UIColor *)grade5RedColor {
    return [self colorWithHexString:@"#0dd97a"];
}

+ (UIColor *)grade6RedColor {
    return [self colorWithHexString:@"#FFE6E6"];
}

+ (UIColor *)grade7RedColor {
    return [self colorWithHexString:@"#FFEBEB"];
}

+ (UIColor *)grade8RedColor {
    return [self colorWithHexString:@"#FF6D60"];
}

+ (UIColor *)auxiliaryRedColor {
    return [self colorWithHexString:@"#e1463e"];
}

+ (UIColor *)auxiliaryOrgColor {
    return [self colorWithHexString:@"#F77300"];
}

+ (UIColor *)speedKillColor {
    return [self colorWithHexString:@"#F17000"];
}

+ (UIColor *)networkColor:(NSString *)str {
    return [self colorWithHexString:str];
}

@end
