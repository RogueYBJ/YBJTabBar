//
//  TabBtn.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "TabBtn.h"

@implementation TabBtn

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.titleEdgeInsets = UIEdgeInsetsZero;
        self.imageEdgeInsets = UIEdgeInsetsZero;
        self.titleEdgeInsets = UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, 0);
        // button.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -button.titleLabel.frame.size.width);
        // 由于iOS8中titleLabel的size为0，用上面这样设置有问题，修改一下即可
        self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -self.titleLabel.intrinsicContentSize.width);
    }
    return self;
}


@end
