//
//  Tabbar.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "Tabbar.h"

@implementation Tabbar

- (instancetype)init
{
    self = [super init];
    if (self) {
        TabView *tabView = [[TabView alloc]init];
        tabView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 49);
        [self addSubview:tabView];
        _tabView = tabView;
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    [self bringSubviewToFront:_tabView];
    
}

-(void)setTabModel:(TabModel *)tabModel{
    _tabView.tabModel = tabModel;
    _tabModel = tabModel;
}
@end
