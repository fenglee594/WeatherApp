//
//  HttpRequest.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/13.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^WeatherBlock) (NSDictionary *result);

@interface HttpRequest : NSObject


+ (void) WeatherInfoFromHttpUrl:(NSString*)url
                               parameters:(NSDictionary *)parameters
                             onCompletion:(WeatherBlock)weatherData;


@end
