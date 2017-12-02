//
//  ViewController.m
//  JJLayer
//
//  Created by lucy on 2017/11/21.
//  Copyright © 2017年 com.daoKeLegend. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Override Base Function

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100.0, 250.0, 250.0, 150.0);
    layer.backgroundColor = [UIColor redColor].CGColor;
    NSString *imagePathStr = [[NSBundle mainBundle] pathForResource:@"sea.jpg" ofType:nil];
    layer.contents = (id)[UIImage imageWithContentsOfFile:imagePathStr].CGImage;
    [self.view.layer addSublayer:layer];
}

@end
