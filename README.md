＃ no320_http_base.ios

封装afnetworking的接口

no320_http_base采用策略模式

在其子类里使用模板模式


## 说明

### no320_http_base

基类


    @interface no320_http_base : AFHTTPClient

    @property(nonatomic,assign,readwrite) id<no320_http_base_protocol> delegate;

    @end



### no320_http_base_api_json

针对json方式的做了处理，这是利用模板模式处理的。


定义如下：

    @interface no320_http_base_api_json: no320_http_base <no320_http_base_protocol>

    @end



## 例子

- BaiduTopnewsClient  最原始的AFN的用法
- BaiduApi   继承no320_http_base
- BaiduApi2  继承no320_http_base_api_json


### 最终定义

    #import "no320_http_base.h"

    @interface BaiduApi2 : no320_http_base_api_json

    SINGLETON_FOR_HEADER(BaiduApi2)

    @end


    #import "BaiduApi2.h"

    @implementation BaiduApi2

    SINGLETON_FOR_CLASS(BaiduApi2)

    -(NSString *) get_base_url_string{
        return  @"http://top.baidu.com/news/pagination";
    }

    @end


### 最终用法

用法都差不多，只有单例写法有差异

   [[BaiduApi2 sharedBaiduApi2] getPath:@"search" parameters:[NSDictionary dictionaryWithObject:@"2" forKey:@"pageno"]  success:^(AFHTTPRequestOperation *operation, id JSON) {
        NSArray *f = [JSON objectFromJSONData];
        NSMutableArray *r = [NSMutableArray array];
        
        for (id i in f) {
            NSArray *newsArr = [i objectForKey:@"news"];
            
            for (NSDictionary *ddd in newsArr) {
                if ([[ddd objectForKey:@"image"] length]>0) {
                    [r addObject:ddd];
                }
            }
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    

## 使用说明

不要把demo加到项目中,只需要

- no320_http_base.h
- no320_http_base.m



## 欢迎fork

shiren1118@126.com

