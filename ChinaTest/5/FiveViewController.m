//
//  FiveViewController.m
//  ChinaTest
//
//  Created by ding _tk on 16/8/9.
//  Copyright © 2016年 ding _tk. All rights reserved.
//

#import "FiveViewController.h"
#import "FiveViewCell.h"
#import "HeaderView.h"
@interface FiveViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation FiveViewController{
    UIView * someHeaderView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
 
        layout.itemSize = CGSizeMake((MainScreenWidth/2)-30,200);
 
    
    layout.sectionInset = UIEdgeInsetsMake(5, 5 ,5, 5);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    
    
    _collectionView.collectionViewLayout = layout;
    _collectionView.showsHorizontalScrollIndicator = NO;
    _collectionView.alwaysBounceHorizontal = NO;
    
   _collectionView.backgroundColor = [UIColor clearColor];
   _collectionView.bounces = NO;
   _collectionView.delegate =self;
   _collectionView.dataSource =self;
    
    
    [_collectionView registerNib:[UINib nibWithNibName:@"FiveViewCell" bundle:nil] forCellWithReuseIdentifier:@"FiveViewCell"];
    
    NSString *CellIdentifier = @"header";
    [self.collectionView registerClass:[HeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:CellIdentifier];

    someHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,MainScreenWidth,200)];
    someHeaderView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    someHeaderView.alpha = 0.5;
    
    //注册headerView  此处的ReuseIdentifier 必须和 cellForItemAtIndexPath 方法中 一致  均为reusableView
    [_collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusableView"];


    
    // Do any additional setup after loading the view from its nib.
}


//这个方法是返回 Header的大小 size
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    
    CGSize size={MainScreenWidth,200};
    return size;
}

//通过设置SupplementaryViewOfKind 来设置头部或者底部的view，其中 ReuseIdentifier 的值必须和 注册是填写的一致，本例都为 “reusableView”
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"reusableView" forIndexPath:indexPath];
    headerView.backgroundColor =[UIColor whiteColor];
//    UILabel *label = [[UILabel alloc] initWithFrame:headerView.bounds];
//    label.text = @"这是collectionView的头部";
//    label.font = [UIFont systemFontOfSize:20];
//    [headerView addSubview:label];

    NSArray * array = @[@"健康服务",@"健康营养",@"健康运动",@"健康器械",@"健康护理",@"健康家居"];
    for(int i = 0 ; i <3;i++)
    {
        for(int j = 0 ; j <  2;j++)
        {
            UIButton * button = [HHControl createButtonWithFrame:CGRectMake(j* MainScreenWidth/2, i*headerView.frame.size.height/3, MainScreenWidth/2, headerView.frame.size.height/3) backGruondImageName:nil Target:self Action:@selector(click) Title:array[i+j*(i+1)] color:[UIColor lightGrayColor]];

            [button setImage:[UIImage imageNamed:@"咨询医生"] forState:UIControlStateNormal];
            [headerView addSubview:button];

        }
    }
        return headerView;
}
-(void)click
{
    
}
#pragma  collection-delegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
    
}
//显示的内容

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    FiveViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"FiveViewCell" forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"FiveViewCell" owner:nil options:nil]lastObject];
    }
    
    
    return cell;
}
@end
