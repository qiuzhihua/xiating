//
//  qiudushuAppDelegate.m
//  ViewC
//
//  Created by qiudushu on 14-10-27.
//  Copyright (c) 2014年 qiudushu. All rights reserved.
//

#import "qiudushuAppDelegate.h"

@implementation qiudushuAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 30, self.window.bounds.size.width, 50)];
    label.text = @"qiudushu";
    label.textAlignment = NSTextAlignmentCenter;
    //label.backgroundColor = [UIColor redColor];
    [self.window addSubview:label];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(30, 240, 260, 40)];
    [btn setTitle:@"xiating" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor greenColor];
    [self.window addSubview:btn];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
