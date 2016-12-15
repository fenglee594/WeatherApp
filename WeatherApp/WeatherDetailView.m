//
//  WeatherDetailView.m
//  WeatherApp
//
//  Created by 李峰 on 2016/12/14.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "WeatherDetailView.h"
#import "MainConfigure.h"

@interface WeatherDetailView ()

@property (nonatomic, strong) UIView *Line1;
@property (nonatomic, strong) UIView *line2;
@property (nonatomic, strong) UILabel *todayDetailLabel;
@property (nonatomic, strong) UILabel *temperatureLabel;
@property (nonatomic, strong) UILabel *humidityLabel;
@property (nonatomic, strong) UILabel *windDirectionLabel;
@property (nonatomic, strong) UILabel *windStrengthLabel;
@property (nonatomic, strong) UILabel *dressingIndexLabel;
@property (nonatomic, strong) UILabel *uvIndexLabel;
@property (nonatomic, strong) UILabel *updateTimeLabel;

@end

@implementation WeatherDetailView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self configure];
        self.backgroundColor = SM_DarkBlue;
    }
    return self;
}

- (void) configure
{
    //设置分隔线
    _Line1 = [[UIView alloc] init];
    [self addSubview:_Line1];
    [_Line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(@(0));
        make.height.equalTo(@(SM_SIZE(1)));
    }];
    _Line1.backgroundColor = SM_whiteColor;
    
    //设置todayDetail
    _todayDetail = [[UILabel alloc] init];
    [self addSubview:_todayDetail];
    [_todayDetail mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(@(0));
        make.top.equalTo(self.Line1.mas_bottom);
        make.height.equalTo(@(SM_SIZE(150)));
    }];
//    _TodayDetail.backgroundColor = SM_LemonColor;
    _todayDetail.font = SM_CFont(34);
//    _todayDetail.backgroundColor = ;
    _todayDetail.textColor = SM_whiteColor;
    _todayDetail.numberOfLines = 0;
    
    //    设置分隔线
    _line2 = [[UIView alloc] init];
    [self addSubview:_line2];
    [_line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(@(0));
        make.top.equalTo(_todayDetail.mas_bottom);
        make.height.equalTo(@(SM_SIZE(1)));
    }];
    _line2.backgroundColor = SM_whiteColor;
    
    //设置详情内容
    
    //设置今日温度
    _temperatureLabel = [[UILabel alloc] init];
    [self addSubview:_temperatureLabel];
    [_temperatureLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_line2.mas_top).offset(SM_SIZE(8));
        make.left.equalTo(@(0));
        make.width.equalTo(_line2.mas_width).multipliedBy(0.48);
        make.height.equalTo(@(SM_SIZE(90)));
    }];
    _temperatureLabel.textAlignment = NSTextAlignmentRight;
    _temperatureLabel.text = @"今日温度：";
    _temperatureLabel.textColor = SM_whiteColor;
    _temperatureLabel.font = SM_CFont(34);
    
    _temperature = [[UILabel alloc] init];
    [self addSubview:_temperature];
    [_temperature mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(_temperatureLabel);
        make.right.equalTo(@(0));
        make.width.equalTo(_line2.mas_width).multipliedBy(0.5);
    }];
    _temperature.textAlignment = NSTextAlignmentLeft;
//    _temperature.text = @"18ºC~24ºC";
    _temperature.textColor = SM_whiteColor;
    _temperature.font =SM_CFont(34);
    
    //设置当前风向
    _windDirectionLabel = [[UILabel alloc] init];
    [self addSubview:_windDirectionLabel];
    [_windDirectionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_temperatureLabel.mas_bottom);
        make.left.right.height.equalTo(_temperatureLabel);
    }];
    _windDirectionLabel.textAlignment = NSTextAlignmentRight;
    _windDirectionLabel.text = @"当前风向：";
    _windDirectionLabel.textColor = SM_whiteColor;
    _windDirectionLabel.font =SM_CFont(34);
    
    _windDirection = [[UILabel alloc] init];
    [self addSubview:_windDirection];
    [_windDirection mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_temperature.mas_bottom);
        make.left.right.height.equalTo(_temperature);
    }];
    _windDirection.textAlignment = NSTextAlignmentLeft;
//    _windDirection.text = @"南风";
    _windDirection.textColor = SM_whiteColor;
    _windDirection.font = SM_CFont(34);
    
    //设置当前风力
    _windStrengthLabel = [[UILabel alloc] init];
    [self addSubview: _windStrengthLabel];
    [_windStrengthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_windDirectionLabel.mas_bottom);
        make.left.right.height.equalTo(_windDirectionLabel);
    }];
    _windStrengthLabel.textAlignment = NSTextAlignmentRight;
    _windStrengthLabel.text = @"当前风力：";
    _windStrengthLabel.textColor = SM_whiteColor;
    _windStrengthLabel.font = SM_CFont(34);
    
    _windStrength = [[UILabel alloc] init];
    [self addSubview:_windStrength];
    [_windStrength mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_windDirection.mas_bottom);
        make.left.right.height.equalTo(_windDirection);
    }];
    _windStrength.textAlignment = NSTextAlignmentLeft;
//    _windStrength.text = @"2级";
    _windStrength.textColor = SM_whiteColor;
    _windStrength.font = SM_CFont(34);
    
    //设置当前湿度
    _humidityLabel = [[UILabel alloc] init];
    [self addSubview: _humidityLabel];
    [_humidityLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_windStrengthLabel.mas_bottom);
        make.left.right.height.equalTo(_windStrengthLabel);
    }];
    _humidityLabel.textAlignment = NSTextAlignmentRight;
    _humidityLabel.text = @"湿度：";
    _humidityLabel.textColor = SM_whiteColor;
    _humidityLabel.font = SM_CFont(34);
    
    _humidity = [[UILabel alloc] init];
    [self addSubview:_humidity];
    [_humidity mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_windStrength.mas_bottom);
        make.left.right.height.equalTo(_windStrength);
    }];
    _humidity.textAlignment = NSTextAlignmentLeft;
//    _humidity.text = @"20%";
    _humidity.textColor = SM_whiteColor;
    _humidity.font = SM_CFont(34);
    
    //设置穿衣指数
    _dressingIndexLabel = [[UILabel alloc] init];
    [self addSubview:_dressingIndexLabel];
    [_dressingIndexLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_humidityLabel.mas_bottom);
        make.left.right.height.equalTo(_humidityLabel);
    }];
    _dressingIndexLabel.textAlignment = NSTextAlignmentRight;
    _dressingIndexLabel.text = @"穿衣指数：";
    _dressingIndexLabel.textColor = SM_whiteColor;
    _dressingIndexLabel.font = SM_CFont(34);
    
    _dressingIndex = [[UILabel alloc] init];
    [self addSubview:_dressingIndex];
    [_dressingIndex mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_humidity.mas_bottom);
        make.left.right.height.equalTo(_humidity);
    }];
    _dressingIndex.textAlignment = NSTextAlignmentLeft;
//    _dressingIndex.text = @"微冷";
    _dressingIndex.textColor = SM_whiteColor;
    _dressingIndex.font = SM_CFont(34);

    //设置更新时间
    _updateTimeLabel = [[UILabel alloc] init];
    [self addSubview:_updateTimeLabel];
    [_updateTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_dressingIndexLabel.mas_bottom);
        make.left.right.height.equalTo(_dressingIndexLabel);
    }];
    _updateTimeLabel.textAlignment = NSTextAlignmentRight;
    _updateTimeLabel.text = @"更新时间：";
    _updateTimeLabel.textColor = SM_whiteColor;
    _updateTimeLabel.font = SM_CFont(34);
    
    _updateTime = [[UILabel alloc] init];
    [self addSubview:_updateTime];
    [_updateTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_dressingIndex.mas_bottom);
        make.left.right.height.equalTo(_dressingIndex);
    }];
    _updateTime.textAlignment = NSTextAlignmentLeft;
//    _updateTime.text = @"2016-12-14 12:11:23";
    _updateTime.textColor = SM_whiteColor;
    _updateTime.font = SM_CFont(34);

}


@end
