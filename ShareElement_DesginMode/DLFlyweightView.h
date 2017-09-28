//
//  DLFlyweightView.h
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/28.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLFlyweightView : UIView
{
    @private
    NSArray *flowerList_;
}

@property (nonatomic,strong)NSArray *flowerList;


@end
