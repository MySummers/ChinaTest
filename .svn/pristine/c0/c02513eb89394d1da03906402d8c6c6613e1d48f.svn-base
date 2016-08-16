//
//  FourViewController.m
//  ChinaTest
//
//  Created by ding _tk on 16/8/9.
//  Copyright © 2016年 ding _tk. All rights reserved.
//
#import "FourCell.h"
#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initView];
}
#pragma mark - 初始化
-(void)initView
{
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [[UIView alloc]init];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"FourCell";

    FourCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];

    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"FourCell" owner:self options:nil]lastObject];
    }


    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end
