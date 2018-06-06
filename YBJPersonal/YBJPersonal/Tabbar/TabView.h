//
//  TabView.h
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

//风格Style
typedef NS_ENUM(NSInteger, YBJTabBarItemStyle) {
    YBJTabBarItemStyleFirst = 0,     //第一种风格：三个按钮
    YBJTabBarItemStyleSecond,        //第二种风格：四个按钮
    YBJTabBarItemStyleThree,         //第三种风格：五个按钮
    YBJTabBarItemStyleFour,          //第四种风格：五个按钮中间凸起
    YBJTabBarItemStyleFive,          //第五种风格：四个按钮高亮状态变大
};

@interface TabView : UIView
//实例化
- (instancetype)init:(YBJTabBarItemStyle)style;
//保存按钮数组
@property(strong ,nonatomic)NSMutableArray * btnArr;
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
//tabBtnblock 的回调方法 点击返回tabbar第几个
@property(nonatomic, copy)void(^tabBtnBlock)(NSInteger index);
@end
