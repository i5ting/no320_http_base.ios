//
//  BaiduApi.m
//  Gospel_IOS
//
//  Created by sang on 4/10/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "BaiduApi.h"

@implementation BaiduApi

SINGLETON_FOR_CLASS(BaiduApi)

NSString * const kbaiduTwitterBaseURLString1 = @"http://top.baidu.com/news/pagination";

-(NSString *) get_base_url_string{
    return kbaiduTwitterBaseURLString1;
}

-(void) set_request_info{
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    
    // Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
	[self setDefaultHeader:@"Accept" value:@"application/json"];
    [self setDefaultHeader:@"Accept" value:@"text/html"];
}

@end
