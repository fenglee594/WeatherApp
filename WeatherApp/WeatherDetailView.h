//
//  WeatherDetailView.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/14.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherDetailView : UIView

@property (nonatomic, strong) UILabel *todayDetail;
@property (nonatomic, strong) UILabel *temperature;
@property (nonatomic, strong) UILabel *humidity;
@property (nonatomic, strong) UILabel *windDirection;
@property (nonatomic, strong) UILabel *windStrength;
@property (nonatomic, strong) UILabel *dressingIndex;
@property (nonatomic, strong) UILabel *uvIndex;
@property (nonatomic, strong) UILabel *updateTime;

@end
