//
//  UIView+GviewFrame.h
//  UIViewFrame
//
//  Created by G on 2017/10/6.
//  Copyright © 2017年 G. All rights reserved.
//
#import "GConstraintMaker.h"
#import <UIKit/UIKit.h>

@interface UIView (GviewFrame)
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;

- (__kindof UIView *)subviewWithClassDescription:(NSString *)description;

- (void)G_makeConstraints:(void(NS_NOESCAPE ^)(GConstraintMaker *make))block;
@end
