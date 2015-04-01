//
//  UserDefaultUtils.m
//  FangDingMaster
//
//  Created by Darker on 15/4/1.
//  Copyright (c) 2015年 Darker. All rights reserved.
//

#import "UserDefaultUtils.h"

@implementation UserDefaultUtils
+(void)saveUserName:(NSString *)username{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault setObject:username forKey:@"username"];

}
+(NSString *)getUserName{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    return [userDefault stringForKey:@"username" ];
}
+(void)savePassword:(NSString *)password{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    [userDefault setObject:password forKey:@"password"];
}
+(NSString *)getPassword{
    NSUserDefaults *userDefault=[NSUserDefaults standardUserDefaults];
    return [userDefault stringForKey:@"password" ];

}
@end