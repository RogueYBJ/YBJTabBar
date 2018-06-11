//
//  ThreeVC.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ThreeVC.h"
#import "FourVC.h"
@interface ThreeVC ()

@end

@implementation ThreeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:UIScreen_Rect];
    imageView.image = [UIImage imageNamed:@"3"];
    [self.view addSubview:imageView];
    self.title = @"csdn";
    [self setLeftBtn:[UIImage resizeImage:[UIImage imageNamed:@"csdn"] withNewSize:CGSizeMake(30, 30)]];
}
-(void)LeftBtnAcrion{
    FourVC * VC = [[FourVC alloc]init];
    VC.UrlStr = @"https://blog.csdn.net/RogueYBJ";
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
