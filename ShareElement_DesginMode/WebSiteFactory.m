//
//  WebSiteFactory.m
//  ShareElement_DesginMode
//
//  Created by DeLongYang on 2017/9/27.
//  Copyright © 2017年 DeLongYang. All rights reserved.
//

#import "WebSiteFactory.h"
#import "DLConcreteWebSite.h"   // 创建 webSite

@implementation WebSiteFactory


- (instancetype)init
{
    self = [super init];
    if (self) {
        _flyweights = [NSDictionary dictionary];
    }
    return self;
}

- (void)use:(User *)user
{
    
}

- (NSInteger)getWebSiteCount
{
    return  self.flyweights.count;
}

- (id<WebSiteProtocol>)getWebSiteCategory:(NSString *)webKey
{
    __block id<WebSiteProtocol> webSet = nil;
    
    [self.flyweights enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        //
        if ([webKey isEqualToString:key]) {
            webSet = obj;
            *stop = YES;
        }
    }];
    
    if (webSet == nil) {
        DLConcreteWebSite *concreteWebSite = [[DLConcreteWebSite alloc]init];
        concreteWebSite.webName = webKey;
        webSet = concreteWebSite;
        
        NSMutableDictionary *mutableDic = [NSMutableDictionary dictionaryWithDictionary:self.flyweights];
        [mutableDic setObject:concreteWebSite forKey:webKey];
        self.flyweights = mutableDic;
    }
    
    return webSet;
}



@end
