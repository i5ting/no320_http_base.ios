//
//  no320_http_base.m
//  Gospel_IOS
//
//  Created by sang on 4/10/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import "no320_http_base.h"


@implementation no320_http_base_api_json

-(id) init{
    if (self = [super init]) {
        self.delegate = self;
    }
    return self;
}

-(NSString *) get_base_url_string{
    return @"";
}

-(void) set_request_info{
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    
    // Accept HTTP Header; see http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1
	[self setDefaultHeader:@"Accept" value:@"application/json"];
    [self setDefaultHeader:@"Accept" value:@"text/html"];
}


@end

@implementation no320_http_base

@synthesize delegate;



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
    if ([delegate respondsToSelector:@selector(get_base_url_string)]) {
        return [delegate get_base_url_string];
    }else{
        assert(@"fails");
    }
    return @"";
}


-(void) set_request_info{
    if ([delegate respondsToSelector:@selector(set_request_info)]) {
        [delegate set_request_info];
    }else{
        assert(@"fails");
    }
}


@end
