//
//  TabView.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "TabView.h"

@implementation TabView

//懒加载数组
-(NSMutableArray *)btnArr{
    if (!_btnArr) {
        _btnArr = [NSMutableArray new];
    }
    return _btnArr;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _btnTitleColor = [UIColor grayColor];
        _btnTitleHetColor = [UIColor blueColor];
        self.backgroundColor = [UIColor whiteColor];
        
//        [self createBtn:VCNum];
        
//        switch (style) {
//            case YBJTabBarItemStyleFirst:
//                [self TabbarStyleFirst];
//                break;
//            case YBJTabBarItemStyleSecond:
//                [self TabbarStyleSecond];
//                break;
//            case YBJTabBarItemStyleThree:
//                [self TabbarStyleThree];
//                break;
//            case YBJTabBarItemStyleFour:
//                [self TabbarStyleFour];
//                break;
//            case YBJTabBarItemStyleFive:
//                [self TabbarStyleFive];
//                break;
//
//            default:
//                break;
//        }
    }
    return self;
}
-(void)createBtn:(NSInteger)VCNum{
    for (int i = 0; i < VCNum; i++) {
        UIButton * tabBtn = [[UIButton alloc]init];
        tabBtn.tag = 10+i;
        [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        tabBtn.titleLabel.font = [UIFont systemFontOfSize:11];
        [self addSubview:tabBtn];
        [self.btnArr addObject:tabBtn];
    }
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
            [button setImage: (_IconArr != nil && _IconArr.count != 0) ? [UIImage resizeImage:_IconArr[button.tag-10] withNewSize:CGSizeMake(30, 30)]:[UIImage imageNamed:@""] forState:UIControlStateNormal];
            [button setImage:(_IconHetArr != nil && _IconHetArr.count != 0) ? [UIImage resizeImage:_IconHetArr[button.tag-10] withNewSize:CGSizeMake(30, 30)]:[UIImage imageNamed:@""] forState:UIControlStateSelected];
            [button setTitle:(_btnTitleArr != nil && _btnTitleArr.count != 0) ? _btnTitleArr[button.tag-10]:@"" forState:UIControlStateNormal];
            [button setTitleColor:_inderx == (button.tag-10)?_btnTitleHetColor:_btnTitleColor forState:UIControlStateNormal];
            button.selected = _inderx == (button.tag-10)?YES:NO;
            [button initButton:0];
            button.transform = (_Style == YBJTabBarItemStyleFirst && _inderx == (button.tag-10))?CGAffineTransformMakeScale(1.2, 1.2):CGAffineTransformMakeScale(1.0, 1.0);
        }
    }
}

-(void)TabbarStyleFirst{
    //第一种风格
    
}
-(void)TabbarStyleSecond{
    //第二种风格
    for (int i = 0; i < 4; i++) {
        UIButton * tabBtn = [[UIButton alloc]init];
        tabBtn.tag = 10+i;
        [tabBtn addTarget:self action:@selector(tabBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        tabBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [self addSubview:tabBtn];
        [self.btnArr addObject:tabBtn];
    }
}

-(void)TabbarStyleThree{
    //第三种风格
    for (int i = 0; i < 5; i++) {
        UIButton * tabBtn = [[UIButton alloc]init];
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
        UIButton * tabBtn = [[UIButton alloc]init];
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
        UIButton * tabBtn = [[UIButton alloc]init];
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
-(void)setVCNum:(NSInteger)VCNum{
    [self createBtn:_VCNum];
}
-(void)setTabModel:(TabModel *)tabModel{
    _Style = tabModel.Style;
    _VCNum = tabModel.VCNum;
    _inderx = tabModel.inderx;
    _IconArr = tabModel.IconArr;
    _IconHetArr = tabModel.IconHetArr;
    _btnTitleArr = tabModel.btnTitleArr;
    _btnTitleColor = tabModel.btnTitleColor;
    _btnTitleHetColor = tabModel.btnTitleHetColor;
    (self.btnArr.count == 0 || self.btnArr == nil) ? [self createBtn:_VCNum]: NSLog(@"%ld",_VCNum);
//    _tabModel = tabModel;
}
@end
