//
//  AppDelegate.m
//  YBJPersonal
//
//  Created by mac on 2018/6/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabbar.h"
#import "TabModel.h"
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
    root.viewControllers = [self ViewControllersArr];
    
    TabModel * model = [TabModel shareTabModel];
    model.Style = YBJTabBarItemStyleFirst;
//    model.inderx = 0;
    model.IconArr = @[[UIImage imageNamed:@"第一"],[UIImage imageNamed:@"第二"],[UIImage imageNamed:@"第三"]];
    model.IconHetArr = @[[UIImage imageNamed:@"第一个"],[UIImage imageNamed:@"第二个"],[UIImage imageNamed:@"第三个"]];
    model.btnTitleArr = @[@"第一",@"第二",@"第三"];
    root.tabModel = model;
    self.window.rootViewController = root;

    [self.window makeKeyAndVisible];
    
}
-(NSArray *)ViewControllersArr{
    UINavigationController * FirstNav = [[UINavigationController alloc]initWithRootViewController:[[FirstVC alloc]init]];
    
    UINavigationController * SecondNav = [[UINavigationController alloc]initWithRootViewController:[[SecondVC alloc]init]];
    
    UINavigationController * ThreeNav = [[UINavigationController alloc]initWithRootViewController:[[ThreeVC alloc]init]];
    
    return @[FirstNav,SecondNav,ThreeNav];
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
