//
//  qiudushuViewController.m
//  Up
//
//  Created by qiudushu on 14-10-29.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "qiudushuViewController.h"

@interface qiudushuViewController ()

@end

@implementation qiudushuViewController


//- (IBAction)up:(id)sender
//{
//    //设置动画效果
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:2.0];
//    CGRect tempFrame = _btn.frame;
//    tempFrame.origin.y -= 50;
//    _btn.frame = tempFrame;
//    [UIView commitAnimations];
//}
//
//- (IBAction)left:(id)sender
//{
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:2.0];
//    CGRect tempFrame = _btn.frame;
//    tempFrame.origin.x -= 50;
//    _btn.frame = tempFrame;
//    [UIView commitAnimations];
//
//}
//
//- (IBAction)right:(id)sender
//{
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:2.0];
//    CGRect tempFrame = _btn.frame;
//    tempFrame.origin.x += 50;
//    _btn.frame = tempFrame;
//    [UIView commitAnimations];
//
//}
//
//- (IBAction)down:(id)sender
//{
//    
//    //设置动画效果
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:2.0];
//    CGRect tempFrame = _btn.frame;
//    tempFrame.origin.y += 50;
//    _btn.frame = tempFrame;
//    [UIView commitAnimations];
//}
- (IBAction)run:(id)sender
{
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:2.0];
        CGRect tempFrame = _btn.frame;

    switch ([sender tag]) {
        case (1):
            tempFrame.origin.y -= 50;
            break;
        case (2):
            tempFrame.origin.x += 50;
            break;
        case (3):
            tempFrame.origin.y += 50;
            break;
        case (4):
             tempFrame.origin.x -= 50;
            break;

        default:
            break;
    }
        _btn.frame = tempFrame;
       [UIView commitAnimations];

}

- (IBAction)leftRotate:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    _btn.transform = CGAffineTransformRotate(_btn.transform, - M_PI_4);
    [UIView commitAnimations];
}

@end
