//
//  RootTabbar.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "RootTabbar.h"
#import "Tabbar.h"
@interface RootTabbar ()

@property(weak ,nonatomic)Tabbar * tabbar;

@end

@implementation RootTabbar

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Tabbar * tabbar = [[Tabbar alloc]init];
    //点击tabBtn的方法回调
    tabbar.tabView.tabBtnBlock = ^(NSInteger index) {
        NSLog(@"index:%ld",index);
        self.selectedIndex = index;
    };
    [self setValue:tabbar forKey:@"tabBar"];
    
    _tabbar = tabbar;
}
-(void)setTabModel:(TabModel *)tabModel{
    self.selectedIndex = tabModel.inderx;
    tabModel.VCNum = self.viewControllers.count;
    _tabbar.tabModel = tabModel;
}


@end
