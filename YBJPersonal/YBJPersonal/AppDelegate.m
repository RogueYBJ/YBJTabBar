//
//  AppDelegate.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabbar.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    #pragma mark 创建页面
    [self createWindow];
    
    
    return YES;
}
#pragma mark - 创建窗口
- (void)createWindow {
    
    RootTabbar * root = [[RootTabbar alloc]init];
    
    self.window.rootViewController = root;
//    self.window = [[UIWindow alloc] init];
//    self.window.backgroundColor = [UIColor whiteColor];
//    self.window.frame = [UIScreen mainScreen].bounds;
//    UNTabBarViewController *tabbarVC = [[UNTabBarViewController alloc] init];
//    self.rootController = tabbarVC;
//    tabbarVC.delegate = self;
//    self.window.rootViewController = tabbarVC;
    [self.window makeKeyAndVisible];
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
