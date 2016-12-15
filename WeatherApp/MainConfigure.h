//
//  MainConfigure.h
//  WeatherApp
//
//  Created by 李峰 on 2016/12/12.
//  Copyright © 2016年 李峰. All rights reserved.
//

#ifndef MainConfigure_h
#define MainConfigure_h

#import "UIFont+SM_Ext.h"
#import "UIColor+Ext.h"
#import "UIImage+Color.h"
#import "Masonry.h"
#import "MJExtension.h"
#import "ResultModel.h"

//请求天气数据的接口
#define WeatherInterface    @"http://v.juhe.cn/weather/index"
#define HttpKey             @"7f8e7f31f2d347559d6dd127111572a8"

/**
 *  px转换
 */
#define SM_SIZE(px) ((SM_SCREEN_WIDTH/380)*(px)/2.0f) //像素换算


/**
 *  字体
 */

#define SM_MyCFont(px)  [UIFont customFontOfSize2:(px/2.2)]
#define SM_CFont(px)    [UIFont customFontOfSize:(px/2.2)]                //自定义字体
#define SM_CBFont(px)   [UIFont customBoldFontOfSize:(px/2.2)]            //自定义粗体
#define SM_SFont(px)    [UIFont systemFontOfSize:(px/2.2)]                //系统字体
#define SM_SBFont(px)   [UIFont boldSystemFontOfSize:(px/2.2)]            //系统粗体


/**
 *  颜色
 */
#define SM_LemonColor       HEXCOLOR(@"f3cc05")     //柠檬
#define SM_waterBlueColor   HEXCOLOR(@"a1e1f3")     //水蓝
#define SM_lightBlueColor   HEXCOLOR(@"03AAF4")     //浅蓝
#define SM_backGroundColor  HEXCOLOR(@"F7F7F7")     //底色
#define SM_lightGrayColor   HEXCOLOR(@"C4C4C4")     //浅灰
#define SM_grayColor        HEXCOLOR(@"787878")     //灰
#define SM_darkGrayColor    HEXCOLOR(@"394d52")     //深灰
#define SM_whiteColor       HEXCOLOR(@"ffffff")     //白
#define SM_blackColor       HEXCOLOR(@"2A2A2A")     //黑
#define SM_DarkBlue         HEXCOLOR(@"#2B7DB1")    //深蓝    

/**
 *  屏幕尺寸
 */

#define SM_SCREEN_SIZE      [UIScreen mainScreen].bounds.size               //屏宽高结构体
#define SM_SCREEN_WIDTH     [UIScreen mainScreen].bounds.size.width         //屏宽
#define SM_SCREEN_HEIGHT    [UIScreen mainScreen].bounds.size.height        //屏高

#endif /* MainConfigure_h */
