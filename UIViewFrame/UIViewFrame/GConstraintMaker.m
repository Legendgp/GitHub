//
//  GConstraintMaker.m
//  UIViewFrame
//
//  Created by G on 2017/10/6.
//  Copyright © 2017年 G. All rights reserved.
//

#import "GConstraintMaker.h"

@interface GConstraintMaker ()
@property (nonatomic, weak) UIView *view;
@end

@implementation GConstraintMaker
- (instancetype)initWithView:(UIView *)view
{
    if ([super init]) {
        self.view = view;
    }
    return self;
}
- (GConstraintMaker *(^)(CGFloat width))G_width
{
    return ^(CGFloat width){
        CGRect frame = self.view.frame;
        frame.size.width = width;
        self.view.frame = frame;
        return self;
    };
}
- (GConstraintMaker *(^)(CGFloat height))G_height
{
    return ^(CGFloat height){
        CGRect frame = self.view.frame;
        frame.size.height = height;
        self.view.frame = frame;
        return self;
    };
}
- (GConstraintMaker *(^)(CGFloat x))G_x
{
    return ^(CGFloat x){
        CGRect frame = self.view.frame;
        frame.origin.x = x;
        self.view.frame = frame;
        return self;
    };
}
- (GConstraintMaker *(^)(CGFloat y))G_y
{
    return ^(CGFloat y){
        CGRect frame = self.view.frame;
        frame.origin.y = y;
        self.view.frame = frame;
        return self;
    };
}
- (GConstraintMaker *(^)(CGFloat centerX))G_centerX
{
    return ^(CGFloat centerX){
        CGPoint center = self.view.center;
        center.x = centerX;
        self.view.center = center;
        return self;
    };
}
- (GConstraintMaker *(^)(CGFloat centerY))G_centerY
{
    return ^(CGFloat centerY){
        CGPoint center = self.view.center;
        center.y = centerY;
        self.view.center = center;
        return self;
    };
}
- (GConstraintMaker *(^)(CGRect rectGetMaxX, CGFloat rangeX))G_rectGetMaxX
{
    return ^(CGRect rectGetMaxX, CGFloat rangeX){
        CGRect frame = self.view.frame;
        frame.origin.x = CGRectGetMaxX(rectGetMaxX) + rangeX;
        self.view.frame = frame;
        return self;
    };
}
- (GConstraintMaker *(^)(CGRect rectGetMaxY, CGFloat rangeY))G_rectGetMaxY
{
    return ^(CGRect rectGetMaxY, CGFloat rangeY){
        CGRect frame = self.view.frame;
        frame.origin.y = CGRectGetMaxY(rectGetMaxY) + rangeY;
        self.view.frame = frame;
        return self;
    };
}
@end
