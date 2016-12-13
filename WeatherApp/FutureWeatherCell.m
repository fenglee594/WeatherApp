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

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configure];
        [self setupControls];
    }
    return self;
}

- (void) configure
{
    
}

- (void) setupControls
{
    _weekLabel = [[UILabel alloc] init];
    [self addSubview:_weekLabel];
    [_weekLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(5);
        make.top.bottom.equalTo(self.mas_top);
        make.width.equalTo(@(SM_SIZE(100)));
    }];
    _weekLabel.backgroundColor = SM_lightBlueColor;
}

+ (CGFloat)cellHeight
{
    return SM_SIZE(100);
}


//+ (instancetype)tableViewCellWithTableView:(UITableView *)aTableView
//{
//    FutureWeatherCell *cell = [aTableView dequeueReusableCellWithIdentifier:[self cellIdentifier]];
//    if (nil == cell) {
//        cell = [[[self class] alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[self cellIdentifier]];
//    }
//    return cell;
//}
//
//+ (NSString *)cellIdentifier
//{
//    return  NSStringFromClass([self class]);
//}

@end
