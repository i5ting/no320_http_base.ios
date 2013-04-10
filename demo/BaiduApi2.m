//
//  BaiduApi2.m
//  Gospel_IOS
//
//  Created by sang on 4/10/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "BaiduApi2.h"

@implementation BaiduApi2

SINGLETON_FOR_CLASS(BaiduApi2)

-(NSString *) get_base_url_string{
    return  @"http://top.baidu.com/news/pagination";
}

@end
