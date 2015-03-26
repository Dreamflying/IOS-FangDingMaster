//
//  BaseViewController.h
//  FangDingMaster
//
//  Created by Darker on 15/3/6.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseDelegate.h"
#import "RequestDelegate.h"
#import "RequestModel.h"
#import "RequestUtils.h"
//关于，UItableviewcontroller 等其他controller 需自己继承 BaseDelegate,RequestDelegate 协议
//由于UIViewController 可以实现对一切view 的控制，所以作为base 类
@interface BaseViewController : UIViewController<BaseDelegate,RequestDelegate>
@property RequestModel *requestModel;
@property RequestUtils *requestUtils;
@end
