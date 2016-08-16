//
//  DLSlideView.h
//  DLSlideController
//
//
//  Created by Dongle Su on 15-8-4.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DLSlideView;

@protocol DLSlideViewDataSource <NSObject>
- (NSInteger)numberOfControllersInDLSlideView:(DLSlideView *)sender;
- (UIViewController *)DLSlideView:(DLSlideView *)sender controllerAt:(NSInteger)index;
@end

@protocol DLSlideViewDelegate <NSObject>
@optional
- (void)DLSlideView:(DLSlideView *)slide switchingFrom:(NSInteger)oldIndex to:(NSInteger)toIndex percent:(float)percent;
- (void)DLSlideView:(DLSlideView *)slide didSwitchTo:(NSInteger)index;
- (void)DLSlideView:(DLSlideView *)slide switchCanceled:(NSInteger)oldIndex;
@end

@interface DLSlideView : UIView
//@property(nonatomic, strong) NSArray *viewControllers;
@property(nonatomic, assign) NSInteger selectedIndex;
@property(nonatomic, weak) UIViewController *baseViewController;
@property(nonatomic, weak) id<DLSlideViewDelegate>delegate;
@property(nonatomic, weak) id<DLSlideViewDataSource>dataSource;
- (void)switchTo:(NSInteger)index;

@end
