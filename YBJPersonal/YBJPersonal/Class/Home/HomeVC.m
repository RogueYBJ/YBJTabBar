//
//  HomeVC.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "HomeVC.h"
#import "FourVC.h"
@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor=[UIColor whiteColor];
    
    [self YBJ_setNavLeftBtn:[UIImage resizeImage:[UIImage imageNamed:@"返回"] withNewSize:CGSizeMake(30, 30)]];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    if (self.navigationController.viewControllers.count > 1) {
        self.hidesBottomBarWhenPushed=YES;
        self.tabBarController.tabBar.hidden=YES;
    }else{
        self.hidesBottomBarWhenPushed=NO;
        self.tabBarController.tabBar.hidden=NO;
    }
}

//二级界面以后的方法
- (void)YBJ_setNavLeftBtn:(UIImage *)image{
    if (self.navigationController.viewControllers.count > 1) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    }
}
//返回
- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}
//左边按钮
-(void)setLeftBtn:(UIImage *)image{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:self action:@selector(LeftBtnAcrion)];
}
-(void)LeftBtnAcrion{}
//右边按钮
-(void)setRightBtn:(UIImage *)image{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:self action:@selector(RightBtnAcrion)];
}
-(void)RightBtnAcrion{}

@end
