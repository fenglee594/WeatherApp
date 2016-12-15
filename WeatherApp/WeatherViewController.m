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
#import "WeatherDetailView.h"

@interface WeatherViewController ()

//@property (nonatomic, strong) UITableView *tableview;
@property (nonatomic, strong) ResultModel *weatherData;

@end



@implementation WeatherViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    self.tableView.rowHeight = [FutureWeatherCell cellHeight];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.bottom.equalTo(@(0));
    }];
    

}

- (void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor = SM_DarkBlue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //#warning Incomplete implementation, return the number of rows
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FutureWeatherCell *cell = [FutureWeatherCell tableViewCellWithTableView:tableView];
    cell.backgroundColor = [UIColor clearColor];
    return cell;
    
}

//自定义section的头部
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    AddressHeaderView *headerView = nil;
    if (section == 0) {
      headerView = [[AddressHeaderView alloc] initWithFrame:CGRectMake(0, 0, SM_SCREEN_WIDTH, 0.4*SM_SCREEN_HEIGHT)];
        _weatherData = [[ResultModel alloc] init];
        NSString *city = @"上海";
        [city stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        NSDictionary *parameters =@{@"dtype"    :   @"json",
                                    @"format"   :   @"1",
                                    @"key"      :   HttpKey,
                                    @"cityname" :   city};
        [HttpRequest WeatherInfoFromHttpUrl:WeatherInterface parameters:parameters onCompletion:^(NSDictionary *result) {
            _weatherData = [ResultModel mj_objectWithKeyValues:result];
            headerView.addressLabel.text = _weatherData.today.city;
            headerView.weatherLabel.text = _weatherData.today.weather;
            headerView.temperatureLabel.text = [_weatherData.sk.temp stringByAppendingString:@"º"];
        }];
        
        
    }
    return headerView;
}


//自定义section头部的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.4*SM_SCREEN_HEIGHT;
}

//自定义section底部
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    WeatherDetailView *detailView = [[WeatherDetailView alloc] initWithFrame:CGRectMake(0, 0.4*SM_SCREEN_HEIGHT+SM_SIZE(100)*7, SM_SCREEN_WIDTH, SM_SCREEN_HEIGHT*0.6)];
    _weatherData = [[ResultModel alloc] init];
    NSString *city = @"上海";
    [city stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSDictionary *parameters =@{@"dtype"    :   @"json",
                                @"format"   :   @"1",
                                @"key"      :   HttpKey,
                                @"cityname" :   city};
    [HttpRequest WeatherInfoFromHttpUrl:WeatherInterface parameters:parameters onCompletion:^(NSDictionary *result) {
        _weatherData = [ResultModel mj_objectWithKeyValues:result];
//        detailView.todayDetail.text = [NSString stringWithFormat:@"今天温度：%@",];
        detailView.todayDetail.text = [NSString stringWithFormat:@"   今天温度：%@，%@，%@",_weatherData.today.temperature,_weatherData.today.dressing_index,_weatherData.today.dressing_advice];
        detailView.temperature.text = _weatherData.today.temperature;
        detailView.windDirection.text = _weatherData.sk.wind_direction;
        detailView.windStrength.text = _weatherData.sk.wind_strength;
        detailView.humidity.text = _weatherData.sk.humidity;
        detailView.dressingIndex.text = _weatherData.today.dressing_index;
        detailView.updateTime.text = _weatherData.sk.time;
    }];
    return detailView;
}

//自定义section底部的高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.6*SM_SCREEN_HEIGHT;
}

@end
