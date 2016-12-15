//
//  FutureWeatherCell.m
//  WeatherApp
//
//  Created by 李峰 on 2016/12/13.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "FutureWeatherCell.h"
#import "MainConfigure.h"

@implementation FutureWeatherCell

//+ (CGFloat)cellHeight
//{
//    return SM_SIZE(200);
//}

- (void) configure
{
    [super configure];
    [self setupControls];
}

- (void) setupControls
{
    _weekLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, SM_SIZE(200), SM_SIZE(100))];
//    _weekLabel.backgroundColor = SM_LemonColor;
    _weekLabel.text = @"星期一";
    _weekLabel.font = SM_CFont(36);
    _weekLabel.textColor = SM_whiteColor;
    [self addSubview:_weekLabel];
    
    _temperatureLabel = [[UILabel alloc] initWithFrame:CGRectMake(275, 0, SM_SIZE(200), SM_SIZE(100))];
    _temperatureLabel.text = @"18ºC～25ºC";
    _temperatureLabel.font = SM_CFont(36);
    _temperatureLabel.textColor = SM_whiteColor;
    [self addSubview:_temperatureLabel];
    
    _weatherImage = [[UIImageView alloc] initWithFrame:CGRectMake(170, SM_SIZE(36), SM_SIZE(40), SM_SIZE(40))];
    _weatherImage.image = [UIImage imageNamed:@"Rainy.png"];
    [_weatherImage.image imageWithColorS:SM_whiteColor];
    [self addSubview:_weatherImage];
}

- (void)setViewlayout
{
    
}



@end
