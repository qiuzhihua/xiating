//
//  ViewC2ViewController.m
//  ViewC2
//
//  Created by qiudushu on 14-10-27.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "ViewC2ViewController.h"

@interface ViewC2ViewController ()

@end

@implementation ViewC2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)loadView
{
    UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    view.backgroundColor = [UIColor whiteColor];
    self.view = view;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, self.view.bounds.size.width, 50)];
    label.text = @"qiudushu";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    //label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(30, 240, 260, 40)];
    [btn setTitle:@"xiating" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning
{
    //[super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
