//
//  FutureWeatherCell.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/13.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "BaseTableCell.h"

@interface FutureWeatherCell : BaseTableCell

@property (nonatomic, strong) UILabel *weekLabel;
@property (nonatomic, strong) UIImageView *weatherImage;
//@property (nonatomic, strong) UILabel *maxTempurature;
//@property (nonatomic, strong) UILabel *minTempurature;
@property (nonatomic, strong) UILabel *temperatureLabel;

//@property

//+ (CGFloat)cellHeight;
@end
