//
//  BaseTableViewController.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/14.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherTableView.h"
#import "MainConfigure.h"
#import "BaseViewController.h"

@interface BaseTableViewController : BaseViewController
<
UITableViewDelegate,
UITableViewDataSource
>

@property (nonatomic, strong) WeatherTableView *tableView;

@end
