//
//  BaseTableViewController.m
//  Home
//
//  Created by mac on 16/3/3.
//  Copyright © 2016年 rzht. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.frame = CGRectMake(0, 0, MainScreenWidth, MainScreenHeight);
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *backButton=[[UIBarButtonItem alloc]init];
    [backButton setTitle:@""];
    self.navigationItem.backBarButtonItem=backButton;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UINavigationBar *naviBar=self.navigationController.navigationBar;
    [naviBar setBarTintColor:[UIColor colorWithRed:109/255.0f green:173/255.0f blue:68/255.0f alpha:1]];

    
    naviBar.titleTextAttributes=@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:20]};

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [[UIView alloc]init];
}

#pragma mark- 分割线宽度满屏
-(void)viewDidLayoutSubviews {
    
    if ([self.tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [self.tableView setSeparatorInset:UIEdgeInsetsZero];
        
    }
    if ([self.tableView respondsToSelector:@selector(setLayoutMargins:)])  {
        [self.tableView setLayoutMargins:UIEdgeInsetsZero];
    }
    
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPat{
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
