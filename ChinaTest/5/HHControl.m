//
//  HHControl.m
//  MyUility
//
//  Created by mac on 14-10-10.
//  Copyright (c) 2014年 rz. All rights reserved.
//

#import "HHControl.h"

@implementation HHControl
#pragma mark 创建UIView
+(UIView *)createViewWithFrame:(CGRect )frame{
    UIView *myView = [[UIView alloc]initWithFrame:frame];
    return myView;
}
#pragma mark 创建UILable
+(UILabel *)createLabelWithFrame:(CGRect )frame Font:(int)font Text:(NSString *)text color:(UIColor *)color{
    UILabel *myLabel = [[UILabel alloc]initWithFrame:frame];
    //myLabel.numberOfLines = 0;//限制行数
    //myLabel.textAlignment = NSTextAlignmentLeft;//对齐的方式
    myLabel.backgroundColor = [UIColor clearColor];//背景色
    myLabel.font = [UIFont systemFontOfSize:font];//字号
    myLabel.textColor = color;//颜色默认是白色，现在默认是黑色
    //NSLineBreakByCharWrapping以单词为单位换行，以单词为阶段换行
    // NSLineBreakByCharWrapping
    //myLabel.lineBreakMode = NSLineBreakByCharWrapping;
    /*
     UIBaselineAdjustmentAlignBaselines文本最上端和label的中线对齐
     UIBaselineAdjustmentAlignCenters 文本中线和label中线对齐
     UIBaselineAdjustmentNone  文本最下端和label中线对齐
     */
    //myLabel.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    myLabel.text = text;
    return myLabel;
    
}
#pragma mark 创建UIButton
+(UIButton *)createButtonWithFrame:(CGRect)frame backGruondImageName:(NSString *)name Target:(id)target Action:(SEL)action Title:(NSString *)title color:(UIColor *)color{
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeCustom];
    myButton.frame = frame;
    [myButton setTitle:title forState:UIControlStateNormal];
    [myButton setTitleColor:color forState:UIControlStateNormal];
    if (name) {
        [myButton setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];

    }
    [myButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return myButton;
}
#pragma mark 创建UIImageView
+(UIImageView *)createImageViewWithFrame:(CGRect )frame ImageName:(NSString *)imageName{
    UIImageView *myImageView = [[UIImageView alloc]initWithFrame:frame];
    myImageView.userInteractionEnabled = YES;//开启用户交互属性
    myImageView.image = [UIImage imageNamed:imageName];
    return myImageView;
}
#pragma mark 创建UITextField
+(UITextField *)createTextFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder passWord:(BOOL)yesOrNo leftImageView:(UIImageView *)imageView rightImageView:(UIImageView *)rightImageView Font:(float)font{
    UITextField *myField = [[UITextField alloc]initWithFrame:frame];//设置灰色的提示文字
    myField.textAlignment = NSTextAlignmentLeft;//文字的对齐方式
    myField.secureTextEntry = yesOrNo;//是否是密码
    //边框设置
    myField.borderStyle = UIKeyboardTypeDefault;//键盘的类型
    myField.autocapitalizationType = NO;//关闭首字母大写
    myField.clearButtonMode = YES;//清除按钮
    
    myField.leftView = imageView;//左边图片
    myField.leftViewMode = UITextFieldViewModeWhileEditing;
    
    myField.rightView = rightImageView;
    myField.rightViewMode = UITextFieldViewModeWhileEditing;
    
    myField.font = [UIFont systemFontOfSize:font];//设置字号
    myField.textColor = [UIColor blackColor];//设置字体颜色
    
    myField.placeholder = placeholder;
    return myField;
}
#pragma mark 创建UISscrollView
+(UIScrollView *)createScrollViewWithFram:(CGRect)frame andSize:(CGSize)size{
    UIScrollView *myScrollView = [[UIScrollView alloc]initWithFrame:frame];
    return myScrollView;
}
#pragma mark 创建UIPageControl
+(UIPageControl *)createPageControlWithFram:(CGRect )frame andNumberPage:(NSInteger)number{
    UIPageControl *myPageController = [[UIPageControl alloc]initWithFrame:frame];
    myPageController.numberOfPages = number;
    return myPageController;
}
#pragma mark 创建UISlider
+(UISlider *)createSliderWithFrame:(CGRect)frame andImgaeName:(UIImage *)name{
    UISlider *slider = [[UISlider alloc]initWithFrame:frame];
    slider.minimumValue = 0;
    slider.maximumValue = 1;
    return slider;
}

+(NSString *)CreatTime:(NSString *)time{


    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    long long s = [time longLongValue];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:s/1000];
    NSString * tomorrowDate = [formatter stringFromDate:confromTimesp];
    return tomorrowDate;

}
//  微信支付
+(void)PayWeChatWithCONTENT:(NSString *)CONTENT andPAY_MONEY:(NSString *)PAY_MONEY andview:(UIView *)view ID:(NSString *)SHOPID TYPE:(NSString *)TYPE{
    
    
}
@end











