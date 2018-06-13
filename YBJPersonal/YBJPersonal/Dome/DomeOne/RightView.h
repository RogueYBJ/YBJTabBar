//
//  RightView.h
//  YBJPersonal
//
//  Created by mac on 2018/6/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RightView : UIView

@property(strong ,nonatomic)UITableView * tableV;

@property(strong ,nonatomic)NSMutableArray * dataArr;
//tabBtnblock 的回调方法 点击返回tabbar第几个
@property(nonatomic, copy)void(^tabBtnBlock)(CGFloat f);
@end
