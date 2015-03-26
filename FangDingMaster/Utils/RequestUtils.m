//
//  RequestUtils.m
//  FangDingMaster
//
//  Created by Darker on 15/3/7.
//  Copyright (c) 2015年 Darker. All rights reserved.
//
//实现
#import "RequestUtils.h"

@implementation RequestUtils


-(void) requestJsonUsePost:(RequestModel *)requestModel{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"data": [requestModel parameter]};
    [manager POST:[requestModel url] parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        NSString *json=(NSString *)responseObject;
        NSLog(@"JSON: %@", json);
        NSArray *result = [ResponseModel objectArrayWithKeyValuesArray:[JsonUtils jsonConvertToNSArray:json]];
        for (ResponseModel *response in result) {
            NSLog(@"code=%@, message=%@", response.code, response.message);
            if([response.code isEqual:REQUEST_SUCCESS_CODE]){
                [[requestModel requestDelegate] requestSuccess:json];
                
            }else{
                
                [[requestModel requestDelegate] requestServerError:response.message];
            }
            
        }

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        [[requestModel requestDelegate] requestServerError: @"error"];
    }];

    
}
-(void) requestJsonUseGet:(RequestModel *)requestModel{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:[requestModel url] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSString *json=(NSString *)responseObject;
        NSLog(@"JSON: %@", json);
        NSArray *result = [ResponseModel objectArrayWithKeyValuesArray:[JsonUtils jsonConvertToNSArray:json]];
        for (ResponseModel *response in result) {
            NSLog(@"code=%@, message=%@", response.code, response.message);
            if([response.code isEqual:REQUEST_SUCCESS_CODE]){
                [[requestModel requestDelegate] requestSuccess:json];
                
            }else{
            
                 [[requestModel requestDelegate] requestServerError:response.message];
            }
            
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
        [[requestModel requestDelegate] requestServerError: @"error"];
    }];
    
}

-(void) requestTest:(RequestModel *)requestModel{
    NSLog(@"%@",@"requestTest");
    ResponseModel *response=[[ResponseModel alloc ]init];
    response.code=@"N01";
    response.message=@"success";
    NSArray *array=@[response];
    NSArray *dictArray = [ResponseModel keyValuesArrayWithObjectArray:array];
    NSLog(@"%@", dictArray);
    NSLog([JsonUtils arrayConvertToJsonString:dictArray]);
    NSString *json=[JsonUtils arrayConvertToJsonString:dictArray];
    NSData *data=[json dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *jsona = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSArray *result = [ResponseModel objectArrayWithKeyValuesArray:jsona];
    for (ResponseModel *user in result) {
        NSLog(@"name=%@, icon=%@", user.code, user.message);
        if([user.code isEqual:REQUEST_SUCCESS_CODE]){
            [[requestModel requestDelegate] requestSuccess:@"success"];

        }
    }
   
}


@end
