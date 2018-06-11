//
//  RootTabbar.h
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabModel.h"
typedef NS_ENUM(NSInteger, RootTabBarItem) {
    RootTabBarItemHome = 0,     //首页
    RootTabBarItemFirst,        //第一个
    RootTabBarItemSecond,       //第二个
    RootTabBarItemThree,        //第三个
    RootTabBarItemFour,         //第四个
};

@interface RootTabbar : UITabBarController

@property(strong ,nonatomic)TabModel * tabModel;

@end
