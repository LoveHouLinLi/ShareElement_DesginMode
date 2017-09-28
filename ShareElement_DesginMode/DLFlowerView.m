//
//  DLFlowerView.m
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/28.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import "DLFlowerView.h"

@implementation DLFlowerView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self.image drawInRect:rect];
}

@end
