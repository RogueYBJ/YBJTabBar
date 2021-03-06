//
//  TabView.h
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TabModel.h"

@interface TabView : UIView
//保存按钮数组
@property(strong ,nonatomic)NSMutableArray * btnArr;
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
//tabBtnblock 的回调方法 点击返回tabbar第几个
@property(nonatomic, copy)void(^tabBtnBlock)(NSInteger index);

@property(strong ,nonatomic)TabModel * tabModel;
@end
