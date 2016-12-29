//
//  AppDelegate.m
//  侧滑侧滑
//
//  Created by tarena1 on 16/3/30.
//  Copyright © 2016年 tarena1. All rights reserved.
//

#import "AppDelegate.h"
#import "RESideMenu.h"
#import "ZQLeftViewController.h"
#import "ZQMainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    ZQMainViewController *mainVC = [[ZQMainViewController alloc]init];
    ZQLeftViewController *leftVC = [[ZQLeftViewController alloc]init];
    leftVC.tableView.backgroundColor = [UIColor clearColor];
    RESideMenu *sideMenu = [[RESideMenu alloc]initWithContentViewController:mainVC leftMenuViewController:leftVC rightMenuViewController:nil];
    //设置菜单的控制器的阴影、背景图
    
    sideMenu.backgroundImage = [UIImage imageNamed:@"加载中"];
    sideMenu.panGestureEnabled = YES;
    sideMenu.panFromEdge = YES;
    sideMenu.contentViewShadowColor = [UIColor blackColor];
    sideMenu.contentViewShadowEnabled = YES;
    sideMenu.menuPreferredStatusBarStyle = UIStatusBarStyleLightContent;
    // 创建window对象，设置sideMene为window的根vc并显示
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.rootViewController = sideMenu;
    [self.window makeKeyAndVisible];

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
