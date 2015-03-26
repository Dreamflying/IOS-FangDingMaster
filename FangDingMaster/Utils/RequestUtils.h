//
//  RequestUtils.h
//  FangDingMaster
//
//  Created by Darker on 15/3/7.
//  Copyright (c) 2015年 Darker. All rights reserved.
//
//请求utils 类  实现post 和get 方法
#import <Foundation/Foundation.h>
#import "RequestModel.h"
#import "Constant.h"
#import "ResponseModel.h"
#import "MJExtension.h"
#import "AFNetworking.h"
#import "JsonUtils.h"

@interface RequestUtils : NSObject
//post方式请求
-(void)requestJsonUsePost:(RequestModel *)requestModel;
//get 方式请求
-(void)requestJsonUseGet:(RequestModel *)requestModel;
//test
-(void)requestTest:(RequestModel *)requestModel;
@end
