//
//  NSData+AES128.h
//  AES28
//
//  Created by WanDing on 16/5/26.
//  Copyright © 2016年 WanDing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonCryptor.h>
@interface NSData (AES128)
- (NSData *)AES128EncryptWithKey:(NSString *)key;   //加密

- (NSData *)AES128DecryptWithKey:(NSString *)key;   //解密
@end
