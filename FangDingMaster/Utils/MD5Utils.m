//
//  MD5Utils.m
//  FangDingMaster
//
//  Created by Darker on 15/3/31.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import "MD5Utils.h"

@implementation MD5Utils
+(NSString*)md5HexDigest:(NSString*)str
{
    const char *original_str = [str UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
        [hash appendFormat:@"%02X", result[i]];
    return [hash lowercaseString];

}

@end

