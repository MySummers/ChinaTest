//
//  DataPromptView.m
//  ttcc
//
//  Created by apple on 15/10/10.
//  Copyright © 2015年 ttcc. All rights reserved.
//
#define DefaultFont [UIFont boldSystemFontOfSize:17]

#import "DataPromptView.h"

@interface DataPromptView ()
{
    UILabel *_showLabel;
    UIImageView * _showImg;
    DataPromptView *view;
}

@end

@implementation DataPromptView


+ (instancetype)showDataPromptViewWithCenter:(CGPoint)center message:(NSString *)message inSuperView:(UIView *)superView{
    CGSize maxSize = CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX);
    
    NSDictionary *attr = @{NSFontAttributeName:DefaultFont};
    CGRect rect = [message boundingRectWithSize:maxSize
                                        options:NSStringDrawingUsesLineFragmentOrigin
                                     attributes:attr
                                        context:nil];

    DataPromptView *view = [[self alloc]init];
    view.frame = CGRectMake(0, 0, MainScreenWidth, 200);
    view.center = center;
    [view initMainUIWithMessage:message];
    [view CreatShowImg];
    [superView addSubview:view];
    return view;
}

+ (void)hideDataPromptViewInSuperView:(UIView *)superView {
    NSEnumerator *subviewsEnum = [superView.subviews reverseObjectEnumerator];
    for (UIView *subView in subviewsEnum.allObjects) {
        if ([subView isKindOfClass:[self class]]) {
            [subView removeFromSuperview];
        }
    }
}

- (void)initMainUIWithMessage:(NSString *)message{
    _showLabel = [[UILabel alloc]init];
    [self addSubview:_showLabel];
    [_showLabel setText:message];
    _showLabel.numberOfLines = 2;
    _showLabel.adjustsFontSizeToFitWidth = YES;
    [_showLabel setTextColor:[UIColor darkGrayColor]];
    [_showLabel setTextAlignment:NSTextAlignmentCenter];
    [_showLabel setFont:DefaultFont];
}

-  (void)CreatShowImg{

    _showImg = [[UIImageView alloc]init];
    [self addSubview:_showImg];
    _showImg.image = [UIImage imageNamed:@"暂无数据"];
    _showImg.frame = CGRectMake(0, 0, 90, 90);
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
   // self.backgroundColor = [UIColor redColor];
    CGFloat width = MainScreenWidth/2;
    CGFloat height = MainScreenHeight/2;
    _showLabel.frame = CGRectMake(20, 110, MainScreenWidth - 40, 40);
    _showImg.frame = CGRectMake(width-45, 10, 90, 90);
    
}


@end
