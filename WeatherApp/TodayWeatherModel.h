//
//  TodayWeatherModel.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/15.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TodayWeatherModel : NSObject

@property (nonatomic, strong) NSString *temperature;//温度范围
@property (nonatomic, strong) NSString *weather;//天气状况
@property (nonatomic, strong) NSDictionary *weather_id;
@property (nonatomic, strong) NSString *wind;//风况
@property (nonatomic, strong) NSString *week;//星期
@property (nonatomic, strong) NSString *city;//城市
@property (nonatomic, strong) NSString *date_y;//时间
@property (nonatomic, strong) NSString *dressing_index;//穿衣指数
@property (nonatomic, strong) NSString *dressing_advice;//穿衣建议
@property (nonatomic, strong) NSString *uv_index;//紫外线强度
@property (nonatomic, strong) NSString *comfort_index;//舒适度指数
@property (nonatomic, strong) NSString *wash_index;//洗衣指数
@property (nonatomic, strong) NSString *travel_index;//旅游zhis
@property (nonatomic, strong) NSString *exercise_index;//锻炼指数
@property (nonatomic, strong) NSString *drying_index;//干燥指数

@end
