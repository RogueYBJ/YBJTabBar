//
//  CustomFooterView.m
//  YBJPersonal
//
//  Created by mac on 2018/6/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "CustomFooterView.h"

@interface CustomFooterView ()

@property(weak ,nonatomic)UIScrollView * LeftScrollV;

@property(weak ,nonatomic)UIScrollView * RightScrollV;

@property(strong ,nonatomic)NSMutableArray * BtnArr;

@end
@implementation CustomFooterView

-(NSMutableArray *)BtnArr{
    if (!_BtnArr) {
        _BtnArr = [NSMutableArray new];
        
    }
    return _BtnArr;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        //这里用属性方便后面的调用
        [self CreateLeftScrollV];
        [self CreateRightScrollV];
    }
    return self;
}
-(void)CreateLeftScrollV{
    UIScrollView * scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.bounds)/4, CGRectGetHeight(self.bounds))];
    scroll.bounces = NO;
    scroll.backgroundColor = [UIColor grayColor];
    _LeftScrollV = scroll;
    [self addSubview:_LeftScrollV];
}
-(void)CreateRightScrollV{
    UIScrollView * scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.bounds)/4, 0, CGRectGetWidth(self.bounds)/4*3, CGRectGetHeight(self.bounds))];
    scroll.backgroundColor = [UIColor grayColor];
    _RightScrollV = scroll;
    
    //在右边的滚动视图上添加VC（个人觉的VC比较稳定一些）
    [self addSubview:_RightScrollV];
}
-(void)CreateLeftBtn:(NSArray *)Num{
    _LeftScrollV.contentSize = CGSizeMake(CGRectGetWidth(_LeftScrollV.bounds), 50*Num.count);
    
    for (int i = 0; i<Num.count; i++) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 50*i, CGRectGetWidth(_LeftScrollV.bounds), 50);
        btn.tag = 10 + i;
        i == 0 ? btn.backgroundColor = [UIColor whiteColor] : nil;
        [btn setTitleColor:i == 0?[UIColor orangeColor]:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitle:Num[i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(leftBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        [_LeftScrollV addSubview:btn];
        //要实现点击修改btn就先把btn存入数组，也可以获取父视图子空间的形式获取
        [self.BtnArr addObject:btn];
    }
}
-(void)leftBtnAction:(UIButton *)sender{
    
    //便利BtnArr数组
    for (UIView * topview in self.BtnArr) {
        if ([topview isKindOfClass:[UIButton class]]) {
            UIButton * button = (UIButton *)topview;
            if (button.tag == sender.tag) {
                button.backgroundColor = [UIColor whiteColor];
                [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
            }else{
                button.backgroundColor = [UIColor grayColor];
                [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }
        }
    }
}
-(void)CreateRightTableView:(NSDictionary *)dic{
    
    _RightScrollV.contentSize = CGSizeMake(CGRectGetWidth(_RightScrollV.bounds), CGRectGetHeight(self.bounds));
    for (int i = 0; i<1; i++) {
        RightView * rightV = [[RightView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(_RightScrollV.bounds)*i, CGRectGetWidth(_RightScrollV.bounds), CGRectGetHeight(_RightScrollV.bounds))];
        rightV.dataArr = [dic objectForKey:@"RX"];
        _rightV = rightV;
        [_RightScrollV addSubview:_rightV];
    }
}
-(void)setModel:(OneModel *)model{
    [self CreateLeftBtn:model.NumArr];

    [self CreateRightTableView:model.dic];
    
    _model = model;
}
@end
