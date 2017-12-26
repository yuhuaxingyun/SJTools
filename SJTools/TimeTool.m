//
//  TimeTool.m
//  MoralInternational
//
//  Created by 黄光伟 on 2017/2/18.
//  Copyright © 2017年 黄光伟. All rights reserved.
//

#import "TimeTool.h"

@implementation TimeTool


#pragma mark --  获取当前时间 并且转成字符串，获得的时0市区的时间跟北京时间相差8小时
+(NSString *)getNowDate {
    NSDate *nowDate = [NSDate date];
    NSTimeInterval time = [nowDate timeIntervalSince1970];
    NSString *timeString = [NSString stringWithFormat:@"%lld", (long long)time];//转为字符型
    return timeString;
}


#pragma mark -- 将获取的时间 转换成字符串
+(NSString *)timeIntoStringWithTime:(long long)sourceTime{
    NSDate *timeDate = [[NSDate alloc]initWithTimeIntervalSince1970:sourceTime/1000];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd \n HH:mm";
    NSString *lastTimeStr = [dateFormatter stringFromDate:timeDate];
    return lastTimeStr;
}
+ (NSString *)ConvertStrToYMDTime:(NSString *)timeStr{
    long long time=[timeStr longLongValue];
    
    NSDate *d = [[NSDate alloc]initWithTimeIntervalSince1970:time/1000.0];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString*timeString=[formatter stringFromDate:d];
    
    return timeString;
}
+ (NSString *)ConvertStrToTime:(NSString *)timeStr{
    
    long long time=[timeStr longLongValue];
    
    NSDate *d = [[NSDate alloc]initWithTimeIntervalSince1970:time/1000.0];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    [formatter setDateFormat:@"MM月dd日 HH:mm"];
    
    NSString*timeString=[formatter stringFromDate:d];
    
    return timeString;
    
}
+ (NSString *)ConvertStrToHMSTime:(NSString *)timeStr{
    long long time=[timeStr longLongValue];
    
    NSDate *d = [[NSDate alloc]initWithTimeIntervalSince1970:time/1000.0];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    
    NSString*timeString=[formatter stringFromDate:d];
    
    return timeString;
}
+ (NSString *)SurplusConvertStrToTime:(NSString *)timeStr{
    
    long long time=[timeStr longLongValue];
    //    long seconds = time/1000 % 60;
    long minutes = (time/1000 / 60) % 60;
    long hours = time /1000/ 3600;
    NSString *timeString;
    if (hours > 0) {
        timeString = [NSString stringWithFormat:@"%ldh",hours];
    }else{
        if (minutes>0) {
            timeString = [NSString stringWithFormat:@"%ldmin",minutes];
        }else{
            timeString = [NSString stringWithFormat:@"1min"];
        }
    }
    return timeString;
    
}
//获取当前时间戳  （以毫秒为单位）
+(NSString *)getNowTimeTimestamp3{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss SSS"]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    
    //设置时区,这个对于时间的处理有时很重要
    
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
    
    [formatter setTimeZone:timeZone];
    
    NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
    
    NSString *timeSp = [NSString stringWithFormat:@"%lld", (long long)[datenow timeIntervalSince1970]*1000];
    
    return timeSp;
    
}

/**
 *  计算剩余时间
 *
 *  @param endTime   结束日期
 *
 *  @return 剩余时间
 */
+(NSString *)getCountDownStringWithEndTime:(NSString *)endTime {
    
   
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    
    NSDate *now = [NSDate date];
    NSTimeZone *zone = [NSTimeZone systemTimeZone];//设置时区
    long long interval = [zone secondsFromGMTForDate: now];
    NSDate *localDate = [now  dateByAddingTimeInterval: interval];
    endTime = [NSString stringWithFormat:@"%@ 23:59", endTime];
    NSDate *endDate = [dateFormatter dateFromString:endTime];
    long long endInterval = [zone secondsFromGMTForDate: endDate];
    NSDate *end = [endDate dateByAddingTimeInterval: endInterval];
    long long voteCountTime = ([end timeIntervalSinceDate:localDate]) / 3600 / 24;
    
    NSString *timeStr = [NSString stringWithFormat:@"%lld", voteCountTime];
    
    return timeStr;
}

#pragma mark -- 首页签单 计时
+(BOOL)isOneDayAfterWithTime:(NSDate *)beforeTime {
    
    // 之前的时间
    NSTimeInterval beforeDay = [beforeTime timeIntervalSince1970];

    // 现在的时间
    NSDate *nowData = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval nowDay = [nowData timeIntervalSince1970];

    // 时间差
    NSTimeInterval timeDif = nowDay - beforeDay;
    
    //    签到过 有旧时间
    //    时间差 小于一天
    if (beforeTime != nil && timeDif - 24*60*60 < 0 ) {
        return NO;
    } else {
        // 是一天之后
        return YES;
    }

}


@end
