//
//  MD5Utils.h
//  FangDingMaster
//  MD5 加密工具类
//  Created by Darker on 15/3/31.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
@interface MD5Utils : NSObject
+(NSString*)md5HexDigest:(NSString *) str;
@end
