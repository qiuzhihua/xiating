//
//  qiudushuViewController.m
//  Yumen1
//
//  Created by qiudushu on 14-10-26.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "qiudushuViewController.h"

@interface qiudushuViewController ()

@end

@implementation qiudushuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //<#statements#>
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *sandboxpath = NSHomeDirectory();
    NSLog(@"sandbox is %@",sandboxpath);
    
    UIView *son = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 200, 60)];
    son.backgroundColor = [UIColor redColor];
    [self.view addSubview:son];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
