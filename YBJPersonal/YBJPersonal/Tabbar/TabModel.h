//
//  TabModel.h
//  YBJPersonal
//
//  Created by mac on 2018/6/10.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

//风格Style
typedef NS_ENUM(NSInteger, YBJTabBarItemStyle) {
    YBJTabBarItemStyleNome = 0,
    YBJTabBarItemStyleFirst,         //第一种风格：三个按钮
    YBJTabBarItemStyleSecond,        //第二种风格：四个按钮
    YBJTabBarItemStyleThree,         //第三种风格：五个按钮
    YBJTabBarItemStyleFour,          //第四种风格：五个按钮中间凸起
    YBJTabBarItemStyleFive,          //第五种风格：四个按钮高亮状态变大
};

@interface TabModel : NSObject

//Style
@property(assign ,nonatomic)YBJTabBarItemStyle Style;
//VCNum
@property(assign ,nonatomic)NSInteger VCNum;
//当前页
@property(assign ,nonatomic)NSInteger inderx;
//Icon图片数组
@property(strong,nonatomic)NSArray * IconArr;
//Icon选中时图片数组
@property(strong ,nonatomic)NSArray * IconHetArr;
//Title按钮文字数组
@property(strong ,nonatomic)NSArray * btnTitleArr;
//文字的背景颜色
@property(strong ,nonatomic)UIColor * btnTitleColor;
//选中时文字的背景颜色
@property(strong ,nonatomic)UIColor * btnTitleHetColor;

+ (TabModel *)shareTabModel;

@end
