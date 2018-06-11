//
//  Tabbar.h
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabModel.h"
#import "TabView.h"

@interface Tabbar : UITabBar

//tabView
@property(weak,nonatomic)TabView * tabView;
//model
@property(strong ,nonatomic)TabModel * tabModel;

@end
