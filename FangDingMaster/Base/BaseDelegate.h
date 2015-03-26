//
//  BaseDelegate.h
//  FangDingMaster
//
//  Created by Darker on 15/3/6.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestModel.h"
// 定义协议
/*
 1.根据Main.storyboard 设计好UI布局,已经各个viewcontroller 之间的跳转逻辑
 2.requestJsonData  请求json 数据
 3.将json 数据转换成model 或者字典，显示在界面上
 */
@protocol BaseDelegate <NSObject>
-(void) initRequestModel;
-(void) requestJsonData:(RequestModel *)requestModel;
-(void) bingDataToView;
@end
@interface BaseDelegate : NSObject

@end
