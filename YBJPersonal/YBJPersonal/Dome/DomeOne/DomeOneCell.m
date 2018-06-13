//
//  DomeOneCell.m
//  YBJPersonal
//
//  Created by mac on 2018/6/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "DomeOneCell.h"

@implementation DomeOneCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self creatView];//创建子试图
    }
    return self;
}
-(void)creatView{
    
    UIScrollView * scrollV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, UIScreen_Width, 100)];
    scrollV.backgroundColor = [UIColor redColor];
    scrollV.contentSize = CGSizeMake(UIScreen_Width*3, 100);
    NSArray * arr = @[@"1",@"2",@"3"];
    for (int i = 0; i<3; i++) {
        UIImageView * imageV = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetWidth(scrollV.bounds)*i, 0, CGRectGetWidth(scrollV.bounds), CGRectGetHeight(scrollV.bounds))];
        imageV.image = [UIImage imageNamed:arr[i]];
        [scrollV addSubview:imageV];
    }
    [self addSubview:scrollV];
    
}
@end
