//
//  HttpRequest.m
//  WeatherApp
//
//  Created by 李峰 on 2016/12/13.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "HttpRequest.h"
#import "AFNetworking.h"

@implementation HttpRequest

+ (void) WeatherInfoFromHttpUrl:(NSString *)url
                               parameters:(NSDictionary *)parameters
                             onCompletion:(WeatherBlock)weatherData
{   //__block NSDictionary *result = [[NSDictionary alloc] init];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    //以get的形式提交，只需要将上面的请求地址给GET做参数就可以
    [manager GET:url parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        id result = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:nil];
//        NSString *result1 = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
//        NSLog(@"%@",result);
        !weatherData?:weatherData(result[@"result"]);
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"error_code:%@ , reason:%@",result[@"error_code"],result[@"reason"]);
    }];
}

@end
