//
//  AppDelegate.m
//  WeChatDemo
//
//  Created by David Guo on 16/2/29.
//  Copyright © 2016年 David. All rights reserved.
//

#import "AppDelegate.h"
#import "XMWeChatViewController.h"
#import "XMConnectViewController.h"
#import "XMMeViewController.h"
#import "XMFindViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    UITabBarController           * WeChatTabBarViewController = [[UITabBarController alloc]init];
    XMConnectViewController      * connectViewController      = [[XMConnectViewController alloc]init];
    XMWeChatViewController       * weChatViewController       = [[XMWeChatViewController alloc]init];
    XMMeViewController           * meViewController           = [[XMMeViewController alloc]init];
    XMFindViewController         * findViewController         = [[XMFindViewController alloc]init];
    
    WeChatTabBarViewController.viewControllers = @[weChatViewController,connectViewController,findViewController,meViewController];
    //默认情况下UITabBarController在加载子视图时是懒加载的，只显示第一个XMWeChatController，下面方法遍历一遍controller，就可以都显示了.
    for (UIViewController *controller in WeChatTabBarViewController.viewControllers) {
        UIView *view = controller.view;
    }
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = WeChatTabBarViewController;
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
