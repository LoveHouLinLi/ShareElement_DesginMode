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
#import "DLFlowerFactory.h"
#import "ExtrinsicFlowerState.h"   // 定义 结构体的地方 用于存储image 和 area
#import "DLFlyweightView.h"
#import "DLFlyweightMode.h"

typedef id<WebSiteProtocol> webSiteType;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self simpleTest];
    [self hundredsFlowers];
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
// 新增加的 百花图
- (void)hundredsFlowers
{
    DLFlowerFactory *factory = [[DLFlowerFactory alloc]init];
    NSMutableArray *flowerList = [[NSMutableArray alloc] initWithCapacity:1000];
    
    DLFlyweightView *flyweightView = [[DLFlyweightView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:flyweightView];
    
    for (int i =0 ; i<1000; i++)
    {
        FlowerType flowerType = arc4random()%kTotalNumberOfFlowerTypes;
        UIView *flowerView = [factory flowerViewWithType:flowerType];
        
        CGRect screenBounds = [[UIScreen mainScreen] bounds];
        
        // 随机的位置 随机的view 的10 - 50 之间的大小的 view
        CGFloat x = (arc4random() % (NSInteger)screenBounds.size.width);
        CGFloat y = (arc4random() % (NSInteger)screenBounds.size.height);
        NSInteger minSize = 10;
        NSInteger maxSize = 50;
        CGFloat size = (arc4random() % (maxSize - minSize + 1)) + minSize;

//        ExtrinsicFlowerState extrinsicState;
//        extrinsicState.flowerView = flowerView;
//        extrinsicState.area = CGRectMake(x, y, size, size);
        
        DLFlyweightMode *mode = [[DLFlyweightMode alloc] init];
        mode.flowerView = flowerView;
        mode.area = CGRectMake(x, y, size, size);
        
        
//        [flowerList addObject:[NSValue value:&extrinsicState withObjCType:@encode(ExtrinsicFlowerState)]];
        
        [flowerList addObject:mode];
    
    }
    
//    [(DLFlyweightView *)self.view setFlowerList:flowerList];
    [flyweightView setFlowerList:flowerList];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
