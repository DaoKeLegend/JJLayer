//
//  ViewController.m
//  JJLayer_demo2
//
//  Created by lucy on 2018/1/21.
//  Copyright © 2018年 com.daoKeLegend. All rights reserved.
//

#import "ViewController.h"
#import "JJCircleLayer.h"

@interface ViewController ()

@property (nonatomic, strong) JJCircleLayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.layer = [[JJCircleLayer alloc] init];
    self.layer.frame = CGRectMake(100, 200, 200, 200);
    self.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
    [self.view.layer addSublayer:self.layer];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.layer animateCircle];
}

@end
