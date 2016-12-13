//
//  ViewController.m
//  WeatherApp
//
//  Created by 李峰 on 2016/12/12.
//  Copyright © 2016年 李峰. All rights reserved.
//

#import "WeatherViewController.h"
#import "MainConfigure.h"
#import "AddressHeaderView.h"
#import "FutureWeatherCell.h"
#import "HttpRequest.h"

@interface WeatherViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableview;

@end



@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AddressHeaderView *view = [[AddressHeaderView alloc] initWithFrame:CGRectMake(0, 0, SM_SCREEN_WIDTH, 0.5*SM_SCREEN_HEIGHT)];
//    view.addressLabel.backgroundColor = SM_LemonColor;
    [self.view addSubview:view];
    NSString *city = @"上海";
    [city stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSDictionary *parameters =@{@"dtype"    :   @"json",
                                @"format"   :   @"1",
                                @"key"      :   HttpKey,
                                @"cityname" :   city};
    
//    [HttpRequest WeatherInfoFromHttpUrl:WeatherInterface parameters:parameters];
    _tableview = [[UITableView alloc] init];
    [self.view addSubview:_tableview];
    
    [_tableview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.height.equalTo(view.mas_height);
    }];
    self.tableview.rowHeight = [FutureWeatherCell cellHeight];
    
    [self.tableview registerClass:[FutureWeatherCell class] forCellReuseIdentifier:@"cell"];
    
}

- (void)viewWillAppear:(BOOL)animated
{
//    self.view.backgroundColor = [UIColor colorWithRed:0.19 green:0.50 blue:0.70 alpha:1.00];
    self.view.backgroundColor = HEXCOLOR(@"#2B7DB1");
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
    return 7;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FutureWeatherCell* cell = nil;
    //使用重用机制，IDENTIFIER作为重用机制查找的标识，tableview查找可用cell时通过IDENTIFIER检索，如果有则cell不为nil
    cell = [self.tableview dequeueReusableCellWithIdentifier:@"cell"];

    return cell;
}


@end
