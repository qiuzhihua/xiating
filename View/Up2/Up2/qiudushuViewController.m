//
//  qiudushuViewController.m
//  Up2
//
//  Created by qiudushu on 14-10-29.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "qiudushuViewController.h"

@interface qiudushuViewController ()

@end

@implementation qiudushuViewController

//左右上下
- (IBAction)run:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];
    CGRect tempFrame = _btn.frame;
        switch ([sender tag]) {
        case 1:
            tempFrame.origin.y -= 50;
            break;
        case 2:
            tempFrame.origin.x += 50;
            break;
        case 3:
            tempFrame.origin.y += 50;
            break;
        case 4:
            tempFrame.origin.x -= 50;
            break;

        default:
            break;
    }
    _btn.frame = tempFrame;
    [UIView commitAnimations];
}

//放大
- (IBAction)bigAndSmall:(id)sender {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:5.0];
    CGPoint tempCenter = _btn.center;
//    int tag = [sender tag];
//    if (10 == tag) {
//        _btn.transform = CGAffineTransformScale(_btn.transform, 1.2, 1.2);
//    }else
//    {
//        _btn.transform = CGAffineTransformScale(_btn.transform, 0.8, 0.8);
//    }
    CGFloat scale = [sender tag] == 10 ? 1.8:0.2;
    _btn.transform = CGAffineTransformScale(_btn.transform, scale, scale);
    
    _btn.center = tempCenter;
    [UIView commitAnimations];

}

//旋转
- (IBAction)rotate:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];
    
    CGRect tempFrame = _btn.frame;
    int tag = [sender tag];
    if (20 == tag) {
        _btn.transform = CGAffineTransformRotate(_btn.transform, -M_PI_4);
    }else
    {
         _btn.transform = CGAffineTransformRotate(_btn.transform, +M_PI_4);
    }
    
    _btn.frame = tempFrame;
    [UIView commitAnimations];
}

- (IBAction)reset:(id)sender {
    _btn.transform = CGAffineTransformIdentity;
}
@end
