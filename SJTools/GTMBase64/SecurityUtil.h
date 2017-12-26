//
//  SecurityUtil.h
//  Smile
//
//  Created by 周 敏 on 12-11-24.
//  Copyright (c) 2012年 BOX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SecurityUtil : NSObject 

#pragma mark - base64
+ (NSString*)encodeBase64String:(NSString *)input;
+ (NSString*)decodeBase64String:(NSString *)input;
+ (NSString*)encodeBase64Data:(NSData *)data;
+ (NSString*)decodeBase64Data:(NSData *)data;

#pragma mark - AES256加密
//将string转成带密码的data
+ (NSData*)encryptAESData:(NSString*)string;
//将string转成带密码的string
+ (NSString*)encryptAESDataToString:(NSString*)string ;

//将带密码的data转成string
+ (NSString*)decryptAESData:(NSData*)data;
//将带密码的data转成data
+ (NSData *)decryptAESDatatoData:(NSData *)data ;
#pragma mark - MD5加密
/**
 *	@brief	对string进行md5加密
 *
 *	@param 	string 	未加密的字符串
 *
 *	@return	md5加密后的字符串
 */
+ (NSString*)encryptMD5String:(NSString*)string;

#pragma mark - AES128加密
//将string转成带密码的NSString
+ (NSString*)encryptAESData:(NSString*)string app_key:(NSString*)key ;
//将string转成带密码的data
+ (NSData *)encryptAESDataToData:(NSString*)string app_key:(NSString*)key;
//将带密码的data转成string
+(NSString*)decryptAESData:(NSData*)data app_key:(NSString*)key ;

//将带密码的data转成NSdata
+(NSData*)decryptAESDataToData:(NSData*)data  app_key:(NSString*)key ;

@end
