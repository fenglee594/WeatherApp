//
//  BaseTableViewController.m
//  WeatherApp
//
//  Created by 李峰 on 2016/12/14.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView                              = [[WeatherTableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];       //UITableViewStyleGrouped  UITableViewStylePlain
        _tableView.delegate                     = self;
        _tableView.dataSource                   = self;
        _tableView.backgroundColor              = SM_DarkBlue;
        _tableView.separatorStyle               = UITableViewCellSeparatorStyleNone;
//        _tableView.separatorStyle             =UITableViewCellSeparatorStyleSingleLine;
        _tableView.tableHeaderView              = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.view.bounds.size.width, DBL_EPSILON)];
        _tableView.tableFooterView              = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.view.bounds.size.width, DBL_EPSILON)];
        _tableView.showsVerticalScrollIndicator = NO;
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    return nil;
}


@end
