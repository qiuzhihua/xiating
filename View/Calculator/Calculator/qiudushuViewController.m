//
//  qiudushuViewController.m
//  Calculator
//
//  Created by qiudushu on 14-10-28.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "qiudushuViewController.h"

@interface qiudushuViewController ()

@end

@implementation qiudushuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UISlider *slider = [[UISlider alloc] init];
    //slider.backgroundColor = [UIColor redColor];
    slider.frame = CGRectMake(0, 200, 200, 100);
    [self.view addSubview:slider];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
