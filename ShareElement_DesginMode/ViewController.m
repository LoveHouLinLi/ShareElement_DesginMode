//
//  ViewController.m
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/27.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import "ViewController.h"
#import "WebSiteFactory.h"
#import "User.h"
#import "WebSiteProtocol.h"
#import "DLConcreteWebSite.h"

typedef id<WebSiteProtocol> webSiteType;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self simpleTest];
}

#pragma mark ----  simple Test
- (void)simpleTest
{
    WebSiteFactory *factory = [[WebSiteFactory alloc]init];
    
    webSiteType type1 = [factory getWebSiteCategory:@"首页"];
    User *user1 = [[User alloc]init];
    user1.userName = @"张三";
    [type1 use:user1];
    
    webSiteType type2 = [factory getWebSiteCategory:@"iOS"];
    User *user2 = [[User alloc]init];
    user2.userName = @"德龙";
    [type2 use:user2];
    
    
    webSiteType type3 = [factory getWebSiteCategory:@"Java"];
    User *user3 = [[User alloc]init];
    user3.userName = @"Developer";
    [type3 use:user3];
    
    NSInteger count = [factory getWebSiteCount];
    NSLog(@"个数: %ld", (long)count);  // 3
    
    
    webSiteType type4 = [factory getWebSiteCategory:@"Java"];
    User *user4 = [[User alloc]init];
    user4.userName = @"new Java Developer";
    [type4 use:user4];
    
    
    
    NSInteger count2 = [factory getWebSiteCount];
    NSLog(@"个数: %ld", (long)count2);  //  3
    
    //  从这个数量 可以看出来 type4  其实  和 type3  是共享的 并没有重复的使用
}

#pragma mark ----  实际开发中使用






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
