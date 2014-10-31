//
//  qiudushuViewController.m
//  View1027
//
//  Created by qiudushu on 14-10-27.
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
    self.view.backgroundColor = [UIColor orangeColor];
    self.view.alpha = 1.0;
    NSLog(@"====%@",NSStringFromCGRect(self.view.bounds));
    
    UIView *one = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    one.backgroundColor = [UIColor blueColor];
    one.alpha = 1.0;
    [self.view addSubview:one];
    
    
    UIView *two = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    two.backgroundColor = [UIColor brownColor];
    two.alpha = 1.0;
    [self.view addSubview:two];

    UIView *three = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 320, 480)];
    three.backgroundColor = [UIColor whiteColor];
    three.alpha = 1.0;
    [self.view addSubview:three];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
