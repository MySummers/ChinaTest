//
//  MessageCollectionCell.m
//  ChinaTest
//
//  Created by applemac on 16/8/9.
//  Copyright © 2016年 ding _tk. All rights reserved.
//

#import "MessageCollectionCell.h"

@implementation MessageCollectionCell

- (void)awakeFromNib {
    // Initialization code
    [_images.layer setCornerRadius:_images.frame.size.width/2];
    [_images.layer setMasksToBounds:YES];
}

@end
