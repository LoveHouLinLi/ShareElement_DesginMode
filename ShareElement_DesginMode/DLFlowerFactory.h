//
//  DLFlowerFactory.h
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/28.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    kAnemone,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia,
    kTotalNumberOfFlowerTypes,
}FlowerType;

@interface DLFlowerFactory : NSObject
{
    @private
    NSMutableDictionary *flowerPool_;
}

- (UIView *)flowerViewWithType:(FlowerType )type;

@end
