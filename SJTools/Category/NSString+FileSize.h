//
//  NSString+FileSize.h
//  SJTools
//
//  Created by 宋江 on 15/12/4.
//  Copyright © 2015年 wt-vrs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FileSize)

/**
 *  返回字符串所占用的尺寸
 *
 *  @param font    字体
 *  @param maxSize 最大尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

- (NSString *)disable_emoji;

/**
 *  36进制转10进制
 */
- (NSUInteger)Thirty_sixHexToTenHex;

/**
 *  三十六进制code 转成userId
 */
- (NSString *)thirty_sixHexToUserId;

@end
