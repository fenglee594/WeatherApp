//
//  HttpRequest.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/13.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpRequest : NSObject

+ (NSDictionary *) WeatherInfoFromHttpUrl:(NSString*)url
                     parameters:(NSDictionary *)parameters;


@end
