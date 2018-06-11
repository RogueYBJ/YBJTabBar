//
//  FirstVC.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "FirstVC.h"
#import "FourVC.h"
@interface FirstVC ()

@end

@implementation FirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:UIScreen_Rect];
    imageView.image = [UIImage imageNamed:@"1"];
    [self.view addSubview:imageView];
    self.title = @"github";
    [self setLeftBtn:[UIImage resizeImage:[UIImage imageNamed:@"github"] withNewSize:CGSizeMake(30, 30)]];
    
}
-(void)LeftBtnAcrion{
    FourVC * VC = [[FourVC alloc]init];
    VC.UrlStr = @"https://github.com/RogueYBJ";
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
