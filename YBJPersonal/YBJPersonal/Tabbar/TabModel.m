//
//  TabModel.m
//  YBJPersonal
//
//  Created by mac on 2018/6/10.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "TabModel.h"

@implementation TabModel
static TabModel * tabModel = nil;
+ (TabModel *)shareTabModel {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        tabModel = [[TabModel alloc]init];
    });
    return tabModel;
    
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setTabModel];
    }
    return self;
}
-(void)setTabModel{
    self.Style = YBJTabBarItemStyleNome;
    self.VCNum = 0;
    self.inderx = 0;
    self.IconArr = [NSArray new];
    self.IconHetArr = [NSArray new];
    self.btnTitleArr = [NSArray new];
    self.btnTitleColor = [UIColor blackColor];
    self.btnTitleHetColor = [UIColor blueColor];
}
@end
