//
//  ViewController.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/12.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableViewController.h"
#import "MainConfigure.h"

typedef void (^getDateBlock) (ResultModel *data);

@interface WeatherViewController : BaseTableViewController


@end

