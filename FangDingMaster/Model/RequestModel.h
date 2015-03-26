//
//  RequestModel.h
//  FangDingMaster
//
//  Created by Darker on 15/3/7.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestDelegate.h"
//封装请求model
@interface RequestModel : NSObject
//请求url
@property NSString *url;
//请求的参数字符串
@property NSString *parameter;
@property NSString *method;
//回调协议
@property NSObject<RequestDelegate> *requestDelegate;
@end
