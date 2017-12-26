//
//  NSString+FileSize.m
//  SJTools
//
//  Created by 宋江 on 15/12/4.
//  Copyright © 2015年 wt-vrs. All rights reserved.
//

#import "NSString+FileSize.h"

@implementation NSString (FileSize)

/**
 *  获取文字尺寸
 *
 *  @param font    文字
 *  @param maxSize 最大尺寸
 *
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}


/**
 *  过滤系统表情
 *
 */
- (NSString *)disable_emoji {
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^\\u0020-\\u007E\\u00A0-\\u00BE\\u2E80-\\uA4CF\\uF900-\\uFAFF\\uFE30-\\uFE4F\\uFF00-\\uFFEF\\u0080-\\u009F\\u2000-\\u201f\r\n]" options:NSRegularExpressionCaseInsensitive error:nil];
    NSString *modifiedString = [regex stringByReplacingMatchesInString:self
                                                               options:0
                                                                 range:NSMakeRange(0, [self length])
                                                          withTemplate:@""];
    if ([modifiedString isEqualToString:@""]) {
        modifiedString = @".";
    }
    return modifiedString;
}

/**
 *  将十六进制转化为十进制
 *
 */
- (NSString *)ToHex:(uint16_t)tmpid {
    NSString *nLetterValue;
    NSString *str =@"";
    uint16_t ttmpig;
    for (int i = 0; i<9; i++) {
        ttmpig=tmpid%16;
        tmpid=tmpid/16;
        switch (ttmpig)
        {
            case 10:
                nLetterValue =@"A";break;
            case 11:
                nLetterValue =@"B";break;
            case 12:
                nLetterValue =@"C";break;
            case 13:
                nLetterValue =@"D";break;
            case 14:
                nLetterValue =@"E";break;
            case 15:
                nLetterValue =@"F";break;
            default:
                nLetterValue = [NSString stringWithFormat:@"%u",ttmpig];
                
        }
        str = [nLetterValue stringByAppendingString:str];
        if (tmpid == 0) {
            break;
        }
        
    }
    return str;
}

// 36 进制 转 10进制
- (NSUInteger)Thirty_sixHexToTenHex{
    NSString * temp10 = [NSString stringWithFormat:@"%lu",strtoul([self UTF8String],0,36)];
    NSUInteger cycleNumber = [temp10 integerValue];
    return cycleNumber;
}

/**
 *  三十六进制code 转成userId
 */
- (NSString *)thirty_sixHexToUserId {
    NSString * temp10 = [NSString stringWithFormat:@"%lu",strtoul([self UTF8String],0,36)];
    NSUInteger cycleNumber = [temp10 integerValue];
    NSString *newUserId = [NSString stringWithFormat:@"%ld",(cycleNumber - 2145675)/7];
    return newUserId;
}

@end
