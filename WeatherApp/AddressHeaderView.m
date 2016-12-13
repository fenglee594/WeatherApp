//
//  AddressHeaderView.m
//  WeatherApp
//
//  Created by 李峰 on 2016/12/12.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "AddressHeaderView.h"
#import "MainConfigure.h"

@implementation AddressHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUpControls];
    }
    return self;
}

- (void)setUpControls
{
    //设置AddressLabel
    _addressLabel = [[UILabel alloc] init];
    [self addSubview:_addressLabel];
    [_addressLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(72);
        make.left.equalTo(self.mas_left).offset(135);
        make.right.equalTo(self.mas_right).offset(-135);
        make.height.equalTo(@(55));
    }];
    _addressLabel.font = SM_CFont(68);
    _addressLabel.text = @"佛山市";
    _addressLabel.textColor = SM_whiteColor;
    _addressLabel.textAlignment = NSTextAlignmentCenter;
    
    //设置WeatherLabel
    _weatherLabel = [[UILabel alloc] init];
    [self addSubview:_weatherLabel];
    [_weatherLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.addressLabel.mas_bottom).offset(-10);
        make.left.equalTo(self.mas_left).offset(150);
        make.right.equalTo(self.mas_right).offset(-150);
        make.height.equalTo(@(30));
    }];
    _weatherLabel.font = SM_CFont(40);
    _weatherLabel.text = @"晴间多云";
    _weatherLabel.textColor = SM_whiteColor;
    _weatherLabel.textAlignment = NSTextAlignmentCenter;
    
    //设置temperatureLabel
    _temperatureLabel = [[UILabel alloc] init];
    [self addSubview:_temperatureLabel];
    [_temperatureLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.weatherLabel.mas_bottom).offset(-15);
        make.left.equalTo(self.mas_left).offset(120);
        make.right.equalTo(self.mas_right).offset(-120);
        make.height.equalTo(self.mas_height).multipliedBy(0.38);
    }];
    _temperatureLabel.font = [UIFont systemFontOfSize:75.f weight:UIFontWeightUltraLight];
    _temperatureLabel.text = @"25˚";
    _temperatureLabel.textColor = SM_whiteColor;
//    _temperatureLabel.backgroundColor = SM_LemonColor;
    _temperatureLabel.textAlignment = NSTextAlignmentCenter;
}

@end
