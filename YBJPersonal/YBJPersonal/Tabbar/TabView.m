//
//  TabView.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "TabView.h"
#import "TabBtn.h"

@implementation TabView

//懒加载数组
-(NSMutableArray *)btnArr{
    if (!_btnArr) {
        _btnArr = [NSMutableArray new];
    }
    return _btnArr;
}

- (instancetype)init:(YBJTabBarItemStyle)style
{
    self = [super init];
    if (self) {
        _btnTitleColor = [UIColor grayColor];
        _btnTitleHetColor = [UIColor blueColor];
        self.backgroundColor = [UIColor whiteColor];
        switch (style) {
            case YBJTabBarItemStyleFirst:
                [self TabbarStyleFirst];
                break;
            case YBJTabBarItemStyleSecond:
                [self TabbarStyleSecond];
                break;
            case YBJTabBarItemStyleThree:
                [self TabbarStyleThree];
                break;
            case YBJTabBarItemStyleFour:
                [self TabbarStyleFour];
                break;
            case YBJTabBarItemStyleFive:
                [self TabbarStyleFive];
                break;
                
            default:
                break;
        }
    }
    return self;
}

-(void)layoutSubviews{
    //获取View的from
    CGRect rect = self.frame;
    //获取每个btn的size
    CGFloat btnWidth = rect.size.width;
    CGFloat btnheight = rect.size.height;
    
    //便利数组根据tag改变from
    for (UIView * topview in self.btnArr) {
        if ([topview isKindOfClass:[UIButton class]]) {
            UIButton * button = (UIButton *)topview;
            button.frame = CGRectMake(btnWidth/self.btnArr.count *(button.tag-10) , 0, btnWidth/self.btnArr.count, btnheight);
            [button setImage:[UIImage resizeImage:_IconArr[button.tag-10] withNewSize:CGSizeMake(30, 30)] forState:UIControlStateNormal];
            [button setImage:[UIImage resizeImage:_IconHetArr[button.tag-10] withNewSize:CGSizeMake(30, 30)] forState:UIControlStateSelected];
            [button setTitle:_btnTitleArr[button.tag-10] forState:UIControlStateNormal];
            [button setTitleColor:_inderx == (button.tag-10)?_btnTitleHetColor:_btnTitleColor forState:UIControlStateNormal];
            button.selected = _inderx == (button.tag-10)?YES:NO;
            [button initButton:0];        }
    }
}

-(void)TabbarStyleFirst{
    //第一种风格
    for (int i = 0; i < 3; i++) {
        TabBtn * tabBtn = [[TabBtn alloc]init];
        tabBtn.tag = 10+i;
        [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        tabBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:tabBtn];
        [self.btnArr addObject:tabBtn];
    }
}
-(void)TabbarStyleSecond{
    //第二种风格
    for (int i = 0; i < 4; i++) {
        TabBtn * tabBtn = [[TabBtn alloc]init];
        tabBtn.tag = 10+i;
        [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        tabBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:tabBtn];
        [self.btnArr addObject:tabBtn];
    }
}

-(void)TabbarStyleThree{
    //第三种风格
    for (int i = 0; i < 5; i++) {
        TabBtn * tabBtn = [[TabBtn alloc]init];
        tabBtn.tag = 10+i;
        [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        tabBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:tabBtn];
        [self.btnArr addObject:tabBtn];
    }
}

-(void)TabbarStyleFour{
    //第四种风格
    for (int i = 0; i < 5; i++) {
        TabBtn * tabBtn = [[TabBtn alloc]init];
        tabBtn.tag = 10+i;
        [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        tabBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:tabBtn];
        [self.btnArr addObject:tabBtn];
    }
}

-(void)TabbarStyleFive{
    //第五种风格
    for (int i = 0; i < 4; i++) {
        TabBtn * tabBtn = [[TabBtn alloc]init];
        tabBtn.tag = 10+i;
        [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        tabBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:tabBtn];
        [self.btnArr addObject:tabBtn];
    }
}
//实现点击方法
-(void)tabBtnAction:(UIButton *)sender{
    _inderx = sender.tag-10;
    if (self.tabBtnBlock) {
        self.tabBtnBlock(sender.tag-10);
    }
    [self layoutSubviews];
}
//当前页
-(void)setInderx:(NSInteger)inderx{
    _inderx = inderx;
}
@end
