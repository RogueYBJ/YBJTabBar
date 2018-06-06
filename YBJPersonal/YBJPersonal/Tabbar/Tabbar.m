//
//  Tabbar.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "Tabbar.h"
#define UIScreen_Width [UIScreen mainScreen].bounds.size.width//宽
#define UIScreen_Height [UIScreen mainScreen].bounds.size.height//高
@implementation Tabbar

- (instancetype)init:(YBJTabBarItemStyle)style
{
    self = [super init];
    if (self) {
        TabView *tabView = [[TabView alloc]init:style];
        tabView.frame = CGRectMake(0, 0, UIScreen_Width, 49);
        [self addSubview:tabView];
        _tabView = tabView;
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    [self bringSubviewToFront:_tabView];
}
//当前页
-(void)setInderx:(NSInteger)inderx{
    _inderx = inderx;
    _tabView.inderx = inderx;
}
//Icon图片数组
-(void)setIconArr:(NSArray *)IconArr{
    _IconArr = IconArr;
    _tabView.IconArr = IconArr;
}
//Icon选中时图片数组
-(void)setIconHetArr:(NSArray *)IconHetArr{
    _IconHetArr = IconHetArr;
    _tabView.IconHetArr = IconHetArr;
}
//Title按钮文字数组
-(void)setBtnTitleArr:(NSArray *)btnTitleArr{
    _btnTitleArr = btnTitleArr;
    _tabView.btnTitleArr = btnTitleArr;
}
//文字的背景颜色
-(void)setBtnTitleColor:(UIColor *)btnTitleColor{
    _btnTitleColor = btnTitleColor;
    _tabView.btnTitleColor = btnTitleColor;
}
//选中时文字的背景颜色
-(void)setBtnTitleHetColor:(UIColor *)btnTitleHetColor{
    _btnTitleHetColor = btnTitleHetColor;
    _tabView.btnTitleHetColor = btnTitleHetColor;
}
//重新set背景颜色
-(void)setBackgroundColor:(UIColor *)backgroundColor{
    _tabView.backgroundColor = backgroundColor;
}
@end
