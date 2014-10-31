//
//  qiudushuViewController.m
//  Yumen
//
//  Created by qiudushu on 14-10-26.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "qiudushuViewController.h"

@interface qiudushuViewController ()

@end

@implementation qiudushuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    
 

	// Do any additional setup after loading the view, typically from a nib.
    UIView *Daye = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 60, 60)];
    NSLog(@"%@",Daye);
  
    NSLog(@"--%@",NSStringFromCGPoint(Daye.center));
    Daye.backgroundColor = [UIColor redColor];
    [self.view addSubview:Daye];
    
//    Daye.clipsToBounds = YES;
    
    UIView *sun = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 30)];
    sun.backgroundColor = [UIColor blueColor];
   [Daye addSubview:sun];
    //Daye.clipsToBounds = YES;
    sun.clipsToBounds = YES;
    
    UIView *Daye1 = [[UIView alloc] initWithFrame:CGRectMake(30, 200, 60, 60)];
    NSLog(@"%@",Daye1);
    Daye1.backgroundColor = [UIColor redColor];
    [self.view addSubview:Daye1];
    
    UIView *sun1 = [[UIView alloc] initWithFrame:CGRectMake(30, 200, 100, 30)];
    sun1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:sun1];
//    Daye1.clipsToBounds = YES;   基于窗口的视图无法根据视图对象去掉周边
//    sun1.clipsToBounds = YES;
    NSLog(@"----%@",NSStringFromCGRect(sun1.bounds));
    NSLog(@"===%@",NSStringFromCGPoint(sun1.center));
    NSString *path = NSHomeDirectory();
    NSLog(@"======%@",path);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
