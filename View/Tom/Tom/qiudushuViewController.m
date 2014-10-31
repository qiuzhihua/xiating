//
//  qiudushuViewController.m
//  Tom
//
//  Created by qiudushu on 14-10-28.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "qiudushuViewController.h"

@interface qiudushuViewController ()
{
    NSDictionary *_dict; // 保存所有图片的个数
}
@end

@implementation qiudushuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 1.获得tom.plist的全路径
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"tom" ofType:@"plist"];
    
    // 2.根据文件路径加载字典
    _dict = [NSDictionary dictionaryWithContentsOfFile:path];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(0, 430, 80, 50);
    [btn setImage:[UIImage imageNamed:@"pie.png"] forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pie:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
- (IBAction)pie:(UIButton *)sender
{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 0;i<24;i ++) {
        NSString *name = [NSString stringWithFormat:@"pie_%02d.jpg",i];
        UIImage *img = [UIImage imageNamed:name];
        [array addObject:img];
    }
    
    // 3.设置动画图片(有顺序)
    _tom.animationImages = array;// 序列帧动画
    
    // 4.只播放一次
    _tom.animationRepeatCount = 1;
    
    // 5.设置动画的持续时间
    _tom.animationDuration = 0.1 * count ;
    
    // 5.开始动画
    [_tom startAnimating];

}
- (IBAction)btnClick:(UIButton *)sender {
    // 1.如果tom正在播放动画，直接返回
    if (_tom.isAnimating) return;
    
    // 2.取出按钮文字
    NSString *title = [sender titleForState:UIControlStateNormal];
    
    // 3.获得图片数量
    int count = [_dict[title] intValue];
    
    // 4.播放动画
    [self playAnim:count fliename:title];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
