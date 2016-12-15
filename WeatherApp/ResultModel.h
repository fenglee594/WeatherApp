//
//  ResultModel.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/15.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKModel.h"
#import "TodayWeatherModel.h"
#import "FutureModel.h"

@interface ResultModel : NSObject

@property (nonatomic, strong) SKModel *sk;
@property (nonatomic, strong) TodayWeatherModel *today;
@property (nonatomic, strong) FutureModel *future;

@end
