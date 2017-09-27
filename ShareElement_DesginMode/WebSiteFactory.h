//
//  WebSiteFactory.h
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/27.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSiteProtocol.h"

@interface WebSiteFactory : NSObject<WebSiteProtocol>

@property (nonatomic,strong)NSDictionary *flyweights;

- (id<WebSiteProtocol>)getWebSiteCategory:(NSString *)webKey;

- (NSInteger )getWebSiteCount;

@end
