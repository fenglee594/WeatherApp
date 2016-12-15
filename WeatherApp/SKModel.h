//
//  SKModel.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/15.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKModel : NSObject

@property (nonatomic, strong) NSString *temp;//当前温度
@property (nonatomic, strong) NSString *wind_direction;//风向
@property (nonatomic, strong) NSString *wind_strength;//风力等级
@property (nonatomic, strong) NSString *humidity;//湿度
@property (nonatomic, strong) NSString *time;//更新时间

@end
