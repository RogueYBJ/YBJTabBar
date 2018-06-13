//
//  RightView.m
//  YBJPersonal
//
//  Created by mac on 2018/6/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "RightView.h"

@interface RightView ()<UITableViewDelegate,UITableViewDataSource>



@property(strong ,nonatomic)NSMutableArray * dataS;

@end

@implementation RightView

-(UITableView *)tableV{
    if (!_tableV) {
        _tableV = [[UITableView alloc]initWithFrame:self.frame style:UITableViewStylePlain];
        _tableV.delegate = self;
        _tableV.dataSource = self;
    }
    return _tableV;
}

-(NSMutableArray *)data{
    if (!_dataS) {
        _dataS = [NSMutableArray new];
    }
    return _dataS;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.tableV];
        self.tableV.bounces = NO;
        [self.tableV addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context

{
    
    if ([keyPath isEqualToString:@"contentOffset"])
        
    {
        CGPoint offset = [change[NSKeyValueChangeNewKey] CGPointValue];
        if (self.tabBtnBlock) {
            self.tabBtnBlock(offset.y <= 0.0f?-64:200-64);
        }
    }
    
}
-(void)setDataArr:(NSMutableArray *)dataArr{
    self.dataS = dataArr;
    [self.tableV reloadData];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataS.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * str = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:str];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:str];
    }
    cell.textLabel.text = self.dataS[indexPath.row];
    return cell;
}

@end
