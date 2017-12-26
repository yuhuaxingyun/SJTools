//
//  TimeTool.h
//  MoralInternational
//
//  Created by 黄光伟 on 2017/2/18.
//  Copyright © 2017年 黄光伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeTool : NSObject

#pragma mark --  获取当前时间 并且转成字符串，获得的时0市区的时间跟北京时间相差8小时
+ (NSString *)getNowDate;

#pragma mark -- 将获取的时间戳 转换成字符串
+(NSString *)timeIntoStringWithTime:(long long)sourceTime;
#pragma mark -- 将获取的时间戳(ms) 转换成字符串 年月日格式
+ (NSString *)ConvertStrToYMDTime:(NSString *)timeStr;
#pragma mark -- 将获取的时间戳(ms) 转换成字符串 月日时格式
+ (NSString *)ConvertStrToTime:(NSString *)timeStr;
#pragma mark -- 将获取的时间戳(ms) 转换成字符串 时分格式
+ (NSString *)SurplusConvertStrToTime:(NSString *)timeStr;
#pragma mark -- 将获取的时间戳(ms) 转换成字符串 时分秒格式
+ (NSString *)ConvertStrToHMSTime:(NSString *)timeStr;
#pragma mark -- 获取当前时间戳(ms) 字符串
+(NSString *)getNowTimeTimestamp3;

#pragma mark -- 计算剩余时间
+(NSString *)getCountDownStringWithEndTime:(NSString *)endTime;

#pragma mark -- 判断token是否过期  返回 --> 过期:no    未过期:yes
+(BOOL)isTokenNotPass;

#pragma mark -- 首页签单 计时
+(BOOL)isOneDayAfterWithTime:(NSDate *)time;





@end
