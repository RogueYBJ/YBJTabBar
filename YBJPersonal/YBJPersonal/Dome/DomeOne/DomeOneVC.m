//
//  DomeOneVC.m
//  YBJPersonal
//
//  Created by mac on 2018/6/12.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "DomeOneVC.h"
#import "CustomFooterView.h"
#import "OneModel.h"
#import "DomeOneCell.h"
@interface DomeOneVC ()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView * tableView;

@property(strong,nonatomic)NSMutableArray * dataSource;

@property(weak,nonatomic)CustomFooterView * footView;

@property(assign,nonatomic)BOOL isContentOffset;

@end

@implementation DomeOneVC

-(NSMutableArray *)dataSource{
    if (!_dataSource) {
        _dataSource = [NSMutableArray new];
    }
    return _dataSource;
}

//初始化tableView
-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, UIScreen_Width, UIScreen_Height) style:UITableViewStylePlain];
        //签订协议
        _tableView.delegate = self;
        _tableView.dataSource = self;
        //添加头部和尾部
        _tableView.tableHeaderView = [self HeadView];
        _tableView.tableFooterView = [self FootView];
        
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //如图所示
    /*
     *首先创建一个tableView
     *添加头部视图
     *添加尾部视图
     *添加cell
     *在这里我重点做尾部视图的操作
     */
    [self.view addSubview:self.tableView];
    [self.tableView registerClass:[DomeOneCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.bounces = NO;
}

//添加头部和尾部
-(UIView *)HeadView{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreen_Width, 200)];
    view.backgroundColor = [UIColor greenColor];
    return view;
}
-(UIView *)FootView{
    
    //自定义View
    CustomFooterView * footView = [[CustomFooterView alloc]initWithFrame:CGRectMake(0, 0, UIScreen_Width, UIScreen_Height-100-64)];
    //这里考虑到传值，而且要传的值也比较多，在这里就用model,这里的model应该放到数据请求里，我在这里做一个简单的传输
    
    OneModel * model = [OneModel new];
    
    model.NumArr = @[@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝"];
    
    
    NSArray * arr1 = @[@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝",@"热销",@"优惠",@"好喝"];
    NSArray * arr2 = @[@"热销",@"优惠",@"好喝"];
    NSArray * arr3 = @[@"热销",@"优惠",@"好喝"];
//    NSArray * arr4 = @[@"热销",@"优惠",@"好喝"];
    
    model.dic = [NSDictionary dictionaryWithObjectsAndKeys:arr1,@"RX",arr2,@"YH",arr3,@"HH", nil];
    footView.model = model;
    
    _footView = footView;
    
    _footView.rightV.tabBtnBlock = ^(CGFloat f) {

        [UIView animateWithDuration:0.3f animations:^{
            self.tableView.contentOffset = CGPointMake(0, f);
        }];
        
    };
    
    return _footView;
}
//协议的两个必要方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DomeOneCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    cell.model = self.dataSource[indexPath.row];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
@end
