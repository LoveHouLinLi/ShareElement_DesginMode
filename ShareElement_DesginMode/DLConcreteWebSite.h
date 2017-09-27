//
//  DLConcreteWebSite.h
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/27.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSiteProtocol.h"

@interface DLConcreteWebSite : NSObject<WebSiteProtocol>

/**
 网站的名称
 */
@property (nonatomic,copy)NSString *webName;

@end
