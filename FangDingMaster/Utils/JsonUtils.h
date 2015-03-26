//
//  ToJsonStringUtils.h
//  UIkitDemo
//
//  Created by Darker on 15/3/6.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonUtils : NSObject
//字典输出json 字符串格式
+(NSString *) dictionaryConvertToJsonString:(NSDictionary *) dictionary;
//数组输出json字符串格式
+(NSString *) arrayConvertToJsonString:(NSArray *) array;
//字符串输出json字符串格式
+(NSString *) stringConvertToJsonString:(NSString *) string;
// 对象(NSString,NSDictionary,NSArray)转json 字符串格式
+(NSString *) objectConvertToJsonString:(id) object;
// 将json 字符转化成数组
+(NSArray *) jsonConvertToNSArray:(NSString *) json;
//将json 字符串转化为字典
+(NSDictionary *) jsonConvertToNSDictionary:(NSString *)json;

@end
