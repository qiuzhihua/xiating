//
//  qiudushuViewController.m
//  Yumen重叠
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
    UIView *red = [[UIView alloc] initWithFrame:CGRectMake(0, 100, 200, 300)];
    red.backgroundColor = [UIColor redColor];
    [self.view addSubview:red];
    red.tag = 1;
    
    UIView *orange = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 200, 300)];
    orange.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:orange];
    orange.tag = 2;
    
    UIView *blue = [[UIView alloc] initWithFrame:CGRectMake(40, 100, 200, 300)];
    blue.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blue];
    blue.tag = 3;
    
    UIButton *btnqiudushu = [[UIButton alloc] initWithFrame:CGRectMake(40, 30, self.view.bounds.size.width-80, 60)];
    //NSLog(@"%@", NSStringFromCGRect(self.view.window.frame));
    
    [btnqiudushu setTitle:@"qiudushu" forState:UIControlStateNormal];
    btnqiudushu.backgroundColor = [UIColor redColor];
    [btnqiudushu addTarget:self action:@selector(onButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnqiudushu];
}

-(void)onButton:(UIButton *)sender
{
    UIView *redView = [self.view viewWithTag:1];
    UIView *orangeView = [self.view viewWithTag:2];
    UIView *blueView = [self.view viewWithTag:3];
    
    NSArray *subViews = self.view.subviews;
    NSUInteger redIndex = [subViews indexOfObject:redView ];
    NSUInteger orangeIndex = [subViews indexOfObject:orangeView ];
    NSUInteger blueIndex = [subViews indexOfObject:blueView];
    
    //[self.view exchangeSubviewAtIndex:redIndex withSubviewAtIndex:blueIndex];
    
    UIView *purple = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 200, 300)];
    purple.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:purple];
    
    //[self.view insertSubview:purple aboveSubview:orangeView];
    //[self.view bringSubviewToFront:redView];
    [self.view sendSubviewToBack:blueView];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
