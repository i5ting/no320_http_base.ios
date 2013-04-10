//
//  BaiduTopnewsClient.h
//  IOSBoilerplate
//
//  Created by sang on 3/8/13.
//
//  使用AFHTTPClient的最原始的版本
//  
#import <Foundation/Foundation.h>
#import "AFHTTPClient.h"

@interface BaiduTopnewsClient : AFHTTPClient
+ (BaiduTopnewsClient *)sharedClient;
@end
