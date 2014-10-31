//
//  qiudushuViewController.h
//  Up2
//
//  Created by qiudushu on 14-10-29.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface qiudushuViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btn;
- (IBAction)run:(id)sender;
- (IBAction)bigAndSmall:(id)sender;
- (IBAction)rotate:(id)sender;
- (IBAction)reset:(id)sender;

@end
