//
//  FourCell.m
//  ChinaTest
//
//  Created by applemac on 16/8/9.
//  Copyright © 2016年 ding _tk. All rights reserved.
//

#import "FourCell.h"

@implementation FourCell

- (void)awakeFromNib {
    // Initialization code
    [_imageS.layer setCornerRadius:5];
    [_imageS.layer setMasksToBounds:YES];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
