//
//  ThreeViewController.m
//  ChinaTest
//
//  Created by ding _tk on 16/8/9.
//  Copyright © 2016年 ding _tk. All rights reserved.
//
#import "MessageCell.h"
#import "ThreeViewController.h"
#import "MessageCollectionCell.h"

@interface ThreeViewController ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource>
{
    NSArray * namesArray;
}
@end

@implementation ThreeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initView];
}
#pragma mark - 初始化
-(void)initView
{
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [[UIView alloc]init];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    namesArray = @[@"医生",@"心里咨询师",@"健康管理师",@"营养师",@"健身教练"];



}
#pragma  collection-delegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;

}
//显示的内容

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    MessageCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MessageCollectionCell" forIndexPath:indexPath];

    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"MessageCollectionCell" owner:nil options:nil]lastObject];
    }


    
    return cell;
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return namesArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"MessageCell";

    MessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];

    if (!cell) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"MessageCell" owner:self options:nil]lastObject];
    }
    cell.name = namesArray[indexPath.row];

    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    if(MainScreenHeight == 568)
    {
        layout.itemSize = CGSizeMake(MainScreenWidth/3,cell.collectionView.frame.size.height-30);
    }
    else if (MainScreenHeight == 480)
    {
        layout.itemSize = CGSizeMake(MainScreenWidth/3,cell.collectionView.frame.size.height-60);
    }
    else
    {
        layout.itemSize = CGSizeMake(MainScreenWidth/3,cell.collectionView.frame.size.height);
    }

    layout.sectionInset = UIEdgeInsetsMake(5, 5 ,5, 5);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;



   cell.collectionView.collectionViewLayout = layout;
   cell.collectionView.showsHorizontalScrollIndicator = NO;
   cell.collectionView.alwaysBounceHorizontal = NO;
   
    cell.collectionView.backgroundColor = [UIColor clearColor];
    cell.collectionView.bounces = NO;
    cell.collectionView.delegate =self;
    cell.collectionView.dataSource =self;


    [cell.collectionView registerNib:[UINib nibWithNibName:@"MessageCollectionCell" bundle:nil] forCellWithReuseIdentifier:@"MessageCollectionCell"];

    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

@end
