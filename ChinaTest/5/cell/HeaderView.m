//
//  HeaderView.m
//  ChinaTest
//
//  Created by ding _tk on 16/8/9.
//  Copyright © 2016年 ding _tk. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIButton * fuwu = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, MainScreenWidth/2, 50)];
    fuwu.backgroundColor = [UIColor redColor];
    [self addSubview:fuwu];

    // Drawing code
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.backgroundColor = [UIColor redColor];
    UIButton * fuwu = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, MainScreenWidth/2, 50)];
    fuwu.backgroundColor = [UIColor redColor];
    [self addSubview:fuwu];
    self.backgroundColor = [UIColor greenColor];
}
@end
