//
//  ViewController.m
//  WeatherApp
//
//  Created by 李峰 on 2016/12/12.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "WeatherViewController.h"
#import "MainConfigure.h"

@interface WeatherViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableview;

@end



@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [self.view addSubview:_tableview];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
//    self.view.backgroundColor = [UIColor colorWithRed:0.19 green:0.50 blue:0.70 alpha:1.00];
    self.view.backgroundColor = SM_LemonColor;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark --tableviewDelegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    return cell;
}


@end
