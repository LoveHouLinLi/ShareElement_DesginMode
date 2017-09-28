//
//  DLFlowerFactory.m
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/28.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import "DLFlowerFactory.h"
#import "DLFlowerView.h"

@implementation DLFlowerFactory

-(UIView *)flowerViewWithType:(FlowerType)type
{
    if (!flowerPool_) {
        flowerPool_ = [[NSMutableDictionary alloc]initWithCapacity:kTotalNumberOfFlowerTypes];
    }
    
    UIView *flowerView = [flowerPool_ objectForKey:[NSNumber numberWithInt:type]];
    
    // 如果 池中没有
    if (flowerView == nil) {
        UIImage *flowerImage = nil;
        switch (type) {
            case kAnemone:
                {
                    flowerImage = [UIImage imageNamed:@"anemone"];
                }
                break;
            case kCosmos:
            {
                flowerImage = [UIImage imageNamed:@"cosmos"];

            }
                break;
            case kGerberas:
            {
                flowerImage = [UIImage imageNamed:@"gerberas"];
                
            }
                break;
            case kHollyhock:
            {
                flowerImage = [UIImage imageNamed:@"hollyhock"];
                
            }
                break;
            case kJasmine:
            {
                flowerImage = [UIImage imageNamed:@"jasmine"];
                
            }
                break;
            case kZinnia:
            {
                flowerImage = [UIImage imageNamed:@"zinnia"];
                
            }
                break;
            default:
                break;
        }
        
        flowerView = [[DLFlowerView alloc]initWithImage:flowerImage];
        
        // 新的共享对象存进池中
        [flowerPool_ setObject:flowerView forKey:[NSNumber numberWithInt:type]];
    }
    
    return flowerView;
}


@end
