//
//  UIFont+SM_Ext.m
//  Follows
//
//  Created by liangshangjia on 16/5/11.
//  Copyright © 2016年 SAMI-Network-Technology. All rights reserved.
//

#import "UIFont+SM_Ext.h"

@implementation UIFont (SM_Ext)

+ (UIFont *)customFontOfSize:(CGFloat)size
{

    UIFont *font = [UIFont fontWithName:@"HelveticaNeue-Light" size:size];
    return  font? font :[UIFont systemFontOfSize:size];
}

+ (UIFont *)customBoldFontOfSize:(CGFloat)size
{
    UIFont *font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:size];
    return font? font : [UIFont boldSystemFontOfSize:size];
}

+ (UIFont *)customFontOfSize2:(CGFloat)size
{
    UIFont *font = [UIFont fontWithName:@"CourierNewPSMT" size:size];
//    font = UIFontWeightThin;
    
    return  font? font :[UIFont systemFontOfSize:size];
    
}

@end
