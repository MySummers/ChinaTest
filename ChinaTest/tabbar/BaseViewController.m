//
//  BaseViewController.m
//  ChinaTest
//
//  Created by ding _tk on 16/8/9.
//  Copyright © 2016年 ding _tk. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *backButton=[[UIBarButtonItem alloc]init];
    self.view.frame = CGRectMake(0, 0, MainScreenWidth, MainScreenHeight);
    [backButton setTitle:@""];
    self.navigationItem.backBarButtonItem=backButton;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UINavigationBar *naviBar=self.navigationController.navigationBar;
    [naviBar setBarTintColor:[UIColor colorWithRed:109/255.0f green:173/255.0f blue:68/255.0f alpha:1]];
    //#6DAD44
    naviBar.titleTextAttributes=@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:20]};

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
