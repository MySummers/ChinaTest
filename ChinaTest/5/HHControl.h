//
//  HHControl.h
//  MyUility
//
//  Created by mac on 14-10-10.
//  Copyright (c) 2014年 rz. All rights reserved.
//
#import <AVFoundation/AVAudioSession.h>
#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HHControl : NSObject <UIAlertViewDelegate>

#pragma mark 创建UIView
+(UIView *)createViewWithFrame:(CGRect )frame;

#pragma mark 创建UILable
+(UILabel *)createLabelWithFrame:(CGRect )frame Font:(int)font Text:(NSString *)text color:(UIColor *)color;

#pragma mark 创建UIButton
+(UIButton *)createButtonWithFrame:(CGRect)frame backGruondImageName:(NSString *)name Target:(id)target Action:(SEL)action Title:(NSString *)title color:(UIColor *)color;

#pragma mark 创建UIImageView
+(UIImageView *)createImageViewWithFrame:(CGRect )frame ImageName:(NSString *)imageName;
#pragma mark 创建UITextField
+(UITextField *)createTextFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder passWord:(BOOL)yesOrNo leftImageView:(UIImageView *)imageView rightImageView:(UIImageView *)rightImageView Font:(float)font;
#pragma mark 创建UISscrollView
+(UIScrollView *)createScrollViewWithFram:(CGRect)frame andSize:(CGSize)size;
#pragma mark 创建UIPageControl
+(UIPageControl *)createPageControlWithFram:(CGRect )frame andNumberPage:(NSInteger)number;
#pragma mark 创建UISlider
+(UISlider *)createSliderWithFrame:(CGRect)frame andImgaeName:(UIImage *)name;
// 转换时间 1464364800 - 2016-05-28 00:00:00
+(NSString *)CreatTime:(NSString *)time;
/* 
 调用的时候

 _desLabel = [FactoryUI createLabelWithFrame:CGRectMake(10, _nameLabel.frame.size.height + _nameLabel.frame.origin.y, KWIDTH - 20, size.height + 10) text:model.material_desc textColor:[UIColor lightGrayColor] font:[UIFont systemFontOfSize:12]];
 
 */
+(void)PayWeChatWithCONTENT:(NSString *)CONTENT andPAY_MONEY:(NSString *)PAY_MONEY andview:(UIView *)view ID:(NSString *)SHOPID TYPE:(NSString *)TYPE;
@end


















