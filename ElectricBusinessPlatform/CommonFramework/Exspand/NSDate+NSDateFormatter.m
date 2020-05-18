//
//  NSDate+NSDateFormatter.m
//  TestControl
//
//  Created by lucky_li on 11-9-6.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSDate+NSDateFormatter.h"

@implementation NSDate (NSDateFormatter)

//根据格式把时间转为字符串
- (NSString *)stringWithFormat:(NSString *)fmt {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:fmt];
    NSString *dateString = [df stringFromDate:self];

    return dateString;
}

//根据格式及时区把时间转为字符串
- (NSString *)stringWithFormat:(NSString *)fmt timeZone:(NSTimeZone *)timeZone {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:fmt];

    [df setTimeZone:timeZone];

    NSString *dateString = [df stringFromDate:self];

    return dateString;
}

//根据时间字符串及格式生成时间
+ (NSDate *)dateFromString:(NSString *)str withFormat:(NSString *)fmt {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];

    [df setDateFormat:fmt];
    NSDate *date = [df dateFromString:str];

    return date;
}

//判断两个时间是否在同一天
- (BOOL)isTheSameDayWithDate:(NSDate *)theDate {
    if (theDate == nil) {
        return NO;
    }

    NSString *day1 = [self stringWithFormat:@"yyyy-MM-dd"];
    NSString *day2 = [theDate stringWithFormat:@"yyyy-MM-dd"];
    if ([day1 isEqualToString:day2]) {
        return YES;
    } else {
        return NO;
    }
}

- (NSString *)getOtherTimeStringWithString:(NSString *)formatTime {
    NSLog(@"formatTime - - - - - -%@", formatTime);
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm"]; //(@"YYYY-MM-dd hh:mm:ss") ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    //设置时区选择北京时间
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:timeZone];
    NSDate *date = [formatter dateFromString:formatTime]; //------------将字符串按formatter转成nsdate
    //时间转时间戳的方法:
//    NSInteger timeSp = [[NSNumber numberWithDouble:[date timeIntervalSince1970]] integerValue] * 1000;
    //时间戳的值
    return [NSString stringWithFormat:@"%d", (int)[date timeIntervalSince1970]];
}

+ (NSString *)getTimeStringWithTimestamp:(NSString *)timestamp {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[timestamp integerValue]];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM-dd HH:mm"];
    
    NSString *string = [formatter stringFromDate:date];
    return string;
}

+ (NSString *)getTimeStringWithTimestamp:(NSString *)timestamp formatterType:(NSString *)formatterType {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[timestamp integerValue]];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:formatterType];
    
    NSString *string = [formatter stringFromDate:date];
    return string;
}

@end
