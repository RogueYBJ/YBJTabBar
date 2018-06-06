//
//  Tabbar.h
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TabView.h"

@interface Tabbar : UITabBar

//完全自定义tabbar
- (instancetype)init:(YBJTabBarItemStyle)style;
//tabView
@property(weak,nonatomic)TabView * tabView;
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

@end
