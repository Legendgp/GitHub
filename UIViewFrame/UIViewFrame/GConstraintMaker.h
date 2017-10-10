//
//  GConstraintMaker.h
//  UIViewFrame
//
//  Created by G on 2017/10/6.
//  Copyright © 2017年 G. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface GConstraintMaker : NSObject

- (instancetype)initWithView:(UIView *)view;

- (GConstraintMaker *(^)(CGFloat width))G_width;
- (GConstraintMaker *(^)(CGFloat height))G_height;
- (GConstraintMaker *(^)(CGFloat x))G_x;
- (GConstraintMaker *(^)(CGFloat y))G_y;
- (GConstraintMaker *(^)(CGFloat centerX))G_centerX;
- (GConstraintMaker *(^)(CGFloat centerY))G_centerY;
- (GConstraintMaker *(^)(CGRect rectGetMaxX, CGFloat rangeX))G_rectGetMaxX;
- (GConstraintMaker *(^)(CGRect rectGetMaxY, CGFloat rangeY))G_rectGetMaxY;
@end
