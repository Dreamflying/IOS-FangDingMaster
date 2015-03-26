//
//  ToJsonStringUtils.m
//  UIkitDemo
//
//  Created by Darker on 15/3/6.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import "JsonUtils.h"

@implementation JsonUtils
+(NSString *) stringConvertToJsonString:(NSString *) string{
    return [NSString stringWithFormat:@"\"%@\"",
            [[string stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"] stringByReplacingOccurrencesOfString:@"\""withString:@"\\\""]
            ];
}
+(NSString *) arrayConvertToJsonString:(NSArray *)array{
    NSMutableString *reString = [NSMutableString string];
    [reString appendString:@"["];
    NSMutableArray *values = [NSMutableArray array];
    for (id valueObj in array) {
        NSString *value = [JsonUtils objectConvertToJsonString:valueObj];
        if (value) {
            [values addObject:[NSString stringWithFormat:@"%@",value]];
        }
    }
    [reString appendFormat:@"%@",[values componentsJoinedByString:@","]];
    [reString appendString:@"]"];
    return reString;
}
+(NSString *) dictionaryConvertToJsonString:(NSDictionary *)dictionary{
    NSArray *keys = [dictionary allKeys];
    NSMutableString *reString = [NSMutableString string];
    [reString appendString:@"{"];
    NSMutableArray *keyValues = [NSMutableArray array];
    for (int i=0; i<[keys count]; i++) {
        NSString *name = [keys objectAtIndex:i];
        id valueObj = [dictionary objectForKey:name];
        NSString *value = [JsonUtils objectConvertToJsonString:valueObj];
        if (value) {
            [keyValues addObject:[NSString stringWithFormat:@"\"%@\":%@",name,value]];
        }
    }
    [reString appendFormat:@"%@",[keyValues componentsJoinedByString:@","]];
    [reString appendString:@"}"];
    return reString;
}
+(NSString *) objectConvertToJsonString:(id) object{
    NSString *value = nil;
    if (!object) {
        return value;
    }
    if ([object isKindOfClass:[NSString class]]) {
        value = [JsonUtils  stringConvertToJsonString:object];
    }else if([object isKindOfClass:[NSDictionary class]]){
        value = [JsonUtils dictionaryConvertToJsonString:object];
    }else if([object isKindOfClass:[NSArray class]]){
        value = [JsonUtils arrayConvertToJsonString:object];
    }
    return value;
}
+(NSArray *)jsonConvertToNSArray:(NSString *)json{
    NSData *data=[json dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *jsonarray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    return jsonarray;
}
+(NSDictionary *)jsonConvertToNSDictionary:(NSString *)json{
    NSData *data=[json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    return jsonDic;

}
@end
