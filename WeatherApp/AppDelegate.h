//
//  AppDelegate.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/12.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (strong, nonatomic) LeftSlideViewController *LeftSlideVC;
@property (strong, nonatomic) UIViewController *mainNavigationController;


@end

