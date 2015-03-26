//
//  BaseViewController.m
//  FangDingMaster
//
//  Created by Darker on 15/3/6.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
@synthesize requestModel;
@synthesize requestUtils;

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self initRequestModel];
     NSLog(@"super-viewDidLoad");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void) initRequestModel{
    NSLog(@"super-init");
    RequestUtils *requestUtilsInit=[[RequestUtils alloc]init];
    [self setRequestUtils:requestUtilsInit];
    RequestModel *requestModelInit=[[RequestModel alloc]init];
    [self setRequestModel:requestModelInit];
}
-(void) requestJsonData:(RequestModel *)requestModel{
    NSLog(@"super-requestJsonData");
    if([self requestUtils]==nil){
     NSLog(@"super-is nil");
    }
    [[self requestUtils] requestTest:requestModel];

}
-(void) bingDataToView{
    NSLog(@"super-bingDataToView");
}
-(void) requestSuccess:(NSString *)responseJson{

}
-(void) requestServerError:(NSString *)error{

}

@end
