//
//  MyTabBarViewController.m
//  Home
//
//  Created by applemac on 16/2/29.
//  Copyright © 2016年 rzht. All rights reserved.
//


#import "MyTabBarViewController.h"



@interface MyTabBarViewController ()

@end

@implementation MyTabBarViewController{
    NSUserDefaults * NSdef;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    //self.view.backgroundColor = [UIColor clearColor];
    [self createViewControllers];
    [self createTabBar];

}

#pragma mark - 创建viewControllers

-(void)createViewControllers
{
    FirstViewController * menuVC = [[FirstViewController alloc]init];
    menuVC.title = @"健康尚品";
    UINavigationController * menuNav = [[UINavigationController alloc]initWithRootViewController:menuVC];
    
    messageViewController * preferential = [messageViewController alloc];
    preferential.title = @"消息列表";
    UINavigationController * preferentialNav = [[UINavigationController alloc]initWithRootViewController:preferential];
   
    ThreeViewController * likeVC = [[ThreeViewController alloc]init];
    likeVC.title = @"健康云+";
    UINavigationController * likeNav = [[UINavigationController alloc]initWithRootViewController:likeVC];
    

    FourViewController * personVC = [[FourViewController alloc]init];
    personVC.title = @"健康广场";
    UINavigationController * personNav = [[UINavigationController alloc]initWithRootViewController:personVC];
    
    FiveViewController * Fives = [[FiveViewController alloc]init];
    Fives.title = @"健康尚品";
    UINavigationController * navigati = [[UINavigationController alloc]initWithRootViewController:Fives];
    self.viewControllers = @[menuNav,preferentialNav,likeNav,personNav,navigati];
}

#pragma mark - 创建tabBar

-(void)createTabBar
{
    //unselectedImageArray selectedImageArray
    NSArray * unselectedImageArray = @[@"首页",@"消息",@"发现",@"广场",@"商品"];
    NSArray * selectedImageArray = @[@"首页1",@"消息1",@"发现1",@"广场1",@"商品1"];
    NSArray * titleArray = @[@"首页",@"消息",@"发现",@"广场",@"尚品"];
    for (int i = 0; i < self.tabBar.items.count; i ++)
    {
        UIImage * unselectedImage = [UIImage imageNamed:unselectedImageArray[i]];
        unselectedImage = [unselectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        UIImage * selectedImage = [UIImage imageNamed:selectedImageArray[i]];
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

        UITabBarItem * item = self.tabBar.items[i];
        item = [item initWithTitle:titleArray[i] image:unselectedImage selectedImage:selectedImage];
    }

     //[self.tabBar setBackgroundImage:[UIImage imageNamed:@"tabback"]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:109/255.0f green:173/255.0f blue:68/255.0f alpha:1]} forState:UIControlStateSelected];
}
@end
