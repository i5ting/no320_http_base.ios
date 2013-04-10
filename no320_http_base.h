//
//  no320_http_base.h
//  Gospel_IOS
//
//  Created by sang on 4/10/13.
//  Copyright (c) 2013 sang alfred. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"


@protocol no320_http_base_get_protocol <NSObject>

@required
-(NSString *) get_base_url_string;
-(void) set_request_info;

@end



@interface no320_http_base_get: AFHTTPClient <no320_http_base_get_protocol>

@end


@interface no320_http_base : AFHTTPClient

SINGLETON_FOR_HEADER(no320_http_base)

//@property(nonatomic,assign,readwrite) id<no320_http_base_get_protocol> delegate;

@end
