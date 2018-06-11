//
//  SecondVC.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "SecondVC.h"
#import "FourVC.h"
@interface SecondVC ()

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:UIScreen_Rect];
    imageView.image = [UIImage imageNamed:@"2"];
    [self.view addSubview:imageView];
    self.title = @"简书";
    [self setRightBtn:[UIImage resizeImage:[UIImage imageNamed:@"简书"] withNewSize:CGSizeMake(30, 30)]];
}

-(void)RightBtnAcrion{
    FourVC * VC = [[FourVC alloc]init];
    VC.UrlStr = @"https://www.jianshu.com/u/aff4c4fbd8db";
    [self.navigationController pushViewController:VC animated:YES];
}

@end
