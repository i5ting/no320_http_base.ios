//
//  BaiduTopnewsClient.m
//  IOSBoilerplate
//
//  Created by sang on 3/8/13.
//
//

#import "BaiduTopnewsClient.h"
#import "AFJSONRequestOperation.h"

NSString * const kbaiduTwitterBaseURLString = @"http://top.baidu.com/news/pagination";


@implementation BaiduTopnewsClient

+ (BaiduTopnewsClient *)sharedClient{
    static BaiduTopnewsClient *_sharedClient = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedClient = [[self alloc] initWithBaseURL:[NSURL URLWithString:kbaiduTwitterBaseURLString]];
    });

    return _sharedClient;
}
//
//- (id)initWithBaseURL:(NSURL *)url {
//    self = [super initWithBaseURL:url];
//    if (!self) {
//        return nil;
//    }
//    
//    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
//    
//    // Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
//	[self setDefaultHeader:@"Accept" value:@"text/html"];
//    
//	// X-UDID HTTP Header
//	[self setDefaultHeader:@"X-UDID" value:[[UIDevice currentDevice] uniqueIdentifier]];
//    
//    return self;
//}


- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    
    // Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
	[self setDefaultHeader:@"Accept" value:@"application/json"];
    [self setDefaultHeader:@"Accept" value:@"text/html"];
    
//    [self setDefaultSSLPinningMode:AFSSLPinningModePublicKey];
    
    return self;
}


@end
