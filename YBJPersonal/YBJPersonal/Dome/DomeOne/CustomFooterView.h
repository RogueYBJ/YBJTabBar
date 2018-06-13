//
//  CustomFooterView.h
//  YBJPersonal
//
//  Created by mac on 2018/6/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OneModel.h"
#import "RightView.h"
@interface CustomFooterView : UIView

@property(strong ,nonatomic)OneModel * model;

@property(weak ,nonatomic)RightView * rightV;

@end
