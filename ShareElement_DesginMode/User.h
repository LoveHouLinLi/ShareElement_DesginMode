//
//  User.h
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/27.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

//名称
@property (nonatomic,copy)NSString *userName;

// 生日
@property (nonatomic,copy)NSString *userBirthday;

// 年龄
@property (nonatomic,assign)NSInteger age;

@end
