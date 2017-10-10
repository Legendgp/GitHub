//
//  ViewController.m
//  UIViewFrame
//
//  Created by G on 2017/10/6.
//  Copyright © 2017年 G. All rights reserved.
//
#import "GViewFrame.h"
#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *customerView1 = [[UIView alloc] init];
    customerView1.backgroundColor = [UIColor redColor];
    [customerView1 G_makeConstraints:^(GConstraintMaker *make) {
        make.G_x(10);
        make.G_y(10);
        make.G_width(SCREEN_WIDTH * 0.5-22);
        make.G_height(200);
//        make.G_x(10).G_y(10).G_width(SCREEN_WIDTH * 0.5-22).G_height(200);
    }];
    
    UIView *customerView2 = [[UIView alloc] init];
    customerView2.backgroundColor = [UIColor yellowColor];
    
    [customerView2 G_makeConstraints:^(GConstraintMaker *make) {
        make.G_rectGetMaxX(customerView1.frame, 24).G_y(customerView1.y).G_width(customerView1.width).G_height(customerView1.height);
    }];
    
    [self.view addSubview:customerView1];
    [self.view addSubview:customerView2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
