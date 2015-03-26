//
//  ViewController.m
//  FangDingMaster
//
//  Created by Darker on 15/3/6.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize show;
@synthesize list;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [super initRequestModel];
    [self initRequestModel];
   //请求
    [super requestJsonData:self.requestModel];
    show.hidesWhenStopped=YES;
    self.list=nil;
    NSArray *array = [[NSArray alloc] initWithObjects:@"美国", @"菲律宾",
                      @"黄岩岛", @"中国", @"泰国", @"越南", @"老挝",
                      @"日本" , nil];
    self.list = array;
   
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //删除此行 #warning警告行
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //删除此行#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *TableSampleIdentifier = @"celltest";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             TableSampleIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:TableSampleIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    UILabel *lable=(UILabel*)[cell viewWithTag:100];
    UIImageView *image=(UIImageView *)[cell viewWithTag:111];
    lable.text = [self.list objectAtIndex:row];
    [image setImage:[UIImage imageNamed:@"0.jpeg"]];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)initRequestModel{
    NSLog(@"%@",@"init");
    
    [show startAnimating];
    self.requestModel.requestDelegate=self;
}

-(void) requestSuccess:(NSString *)responseJson{
    NSLog(@"%@",responseJson);
   [show stopAnimating];

}
-(void) requestServerError:(NSString *)error{
}
@end
