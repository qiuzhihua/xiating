//
//  qiudushuViewController.m
//  UibuttonView
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
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 220, 50)];
    //[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.backgroundColor = [UIColor whiteColor];
    [btn setTitle:@"qiudushu" forState:UIControlStateNormal];
    //高亮的作用就是让点击显现出来
    //[btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn setTitle:@"xiating" forState:UIControlStateHighlighted];
    [btn setTitle:@"fuzizhen" forState:UIControlStateHighlighted];
    [btn setTitle:@"yangyun" forState:UIControlStateDisabled];
    [btn setTitle:@"xuanwomingren" forState:UIControlStateSelected];
    btn.selected = YES;
    //btn.enabled = NO;
    
    UIImage *img = [UIImage imageNamed:@"psb.jpeg"];
    [btn setBackgroundImage:img forState:UIControlStateNormal];
    //[btn setImage:img forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(touchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)touchButton:(UIButton *)button
{
    NSLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
