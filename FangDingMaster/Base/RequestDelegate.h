//
//  RequestDelegate.h
//  FangDingMaster
//
//  Created by Darker on 15/3/7.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import <Foundation/Foundation.h>

// 定义网络请求回调协议
//1.请求获取成功，2.请求超时，3.请求服务器错误
@protocol RequestDelegate <NSObject>
-(void)requestSuccess:(NSString *)responseJson;
-(void)requestTimeout;
-(void)requestServerError:(NSString *)error;
@end
@interface RequestDelegate : NSObject

@end
