//
//  ViewController.h
//  FangDingMaster
//
//  Created by Darker on 15/3/6.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface ViewController :BaseViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) NSArray *list; 
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *show;

@end

