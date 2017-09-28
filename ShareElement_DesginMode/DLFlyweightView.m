//
//  DLFlyweightView.m
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/28.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import "DLFlyweightView.h"
//#import "ExtrinsicFlowerState.h"    // 外部的 变量
#import "DLFlyweightMode.h"

@implementation DLFlyweightView

@synthesize flowerList = flowerList_;

// 
extern NSString *FlowerObjectKey, *FlowerLocationKey;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    // Drawing code  本来打算用 struct 来存储这些变量的
//    for (NSValue *stateValue in flowerList_)
//    {
//        ExtrinsicFlowerState state;
//        [stateValue getValue:&state];
//
//        UIView *flowerView = state.flowerView;
//        CGRect area = state.area;
//
//        [flowerView drawRect:area];
//    }
    
    for (DLFlyweightMode *mode in flowerList_)
    {
        UIView *flowerView = mode.flowerView;
        CGRect area = mode.area;
        
        [flowerView drawRect:area];

    }
}





@end
