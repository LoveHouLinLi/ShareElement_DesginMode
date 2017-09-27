//
//  DLConcreteWebSite.m
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/27.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import "DLConcreteWebSite.h"

@implementation DLConcreteWebSite

- (void)use:(User *)user
{
    NSLog(@"website category is:%@ userName is:%@ address is:%@",self.webName,user.userName,user.userBirthday);
}


@end
