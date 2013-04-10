//
//  no320_http_base.m
//  Gospel_IOS
//
//  Created by sang on 4/10/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "no320_http_base.h"

@implementation no320_http_base

//@synthesize delegate;

//+ (no320_http_base *)sharedClient{
//    static no320_http_base *_sharedClient = nil;
//    static dispatch_once_t oncePredicate;
//    dispatch_once(&oncePredicate, ^{
//        _sharedClient = [[self alloc] init];
//    });
//    
//    return _sharedClient;
//}

SINGLETON_FOR_CLASS(no320_http_base)

- (id)init
{
    NSURL *base_url = [NSURL URLWithString:[self get_base_url_string]];
    return [self initWithBaseURL:base_url];
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }

    [self set_request_info];
    
    return self;
}


-(NSString *)get_base_url_string
{
//    if ([delegate respondsToSelector:@selector(get_base_url_string)]) {
//        return [delegate get_base_url_string];
//    }else{
//        assert(@"fails");
//    }
}


-(void) set_request_info{
    
}


@end
