//
//  RootTabbar.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "RootTabbar.h"
#import "Tabbar.h"
#import "HomeVC.h"
#import "FirstVC.h"
#import "SecondVC.h"
#import "ThreeVC.h"
#import "FourVC.h"
@interface RootTabbar ()

@end

@implementation RootTabbar

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Tabbar * tabbar = [[Tabbar alloc]init:YBJTabBarItemStyleFirst];
    //修改title的颜色
    tabbar.btnTitleColor = [UIColor blackColor];
    //修改title按住是颜色
    tabbar.btnTitleHetColor = [UIColor orangeColor];
    //传入icon图片数组
    tabbar.IconArr = @[[UIImage imageNamed:@"第一"],[UIImage imageNamed:@"第二"],[UIImage imageNamed:@"第三"]];
    //传入icon选中时图片数组
    tabbar.IconHetArr = @[[UIImage imageNamed:@"第一个"],[UIImage imageNamed:@"第二个"],[UIImage imageNamed:@"第三个"]];
    //传入title数组
    tabbar.btnTitleArr = @[@"首页",@"咨询",@"我的"];
    //点击tabBtn的方法回调
    tabbar.tabView.tabBtnBlock = ^(NSInteger index) {
        NSLog(@"index:%ld",index);
        self.selectedIndex = index;
    };
    [self setValue:tabbar forKey:@"tabBar"];
    
    [self addChildViewController:[[FirstVC alloc]init]];
    [self addChildViewController:[[SecondVC alloc]init]];
    [self addChildViewController:[[ThreeVC alloc]init]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
