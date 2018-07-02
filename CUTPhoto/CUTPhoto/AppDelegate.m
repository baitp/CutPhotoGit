//
//  AppDelegate.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/3/16.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "AppDelegate.h"
#import "RootVc.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]init];
    RootVc* vc = [[RootVc alloc]init];
    UINavigationController* naVC = [[UINavigationController alloc]initWithRootViewController:vc];
    naVC.navigationBar.barTintColor = [UIColor redColor];
    [naVC.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    //info.plist 里面 View controller-based status bar appearance = NO
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    self.window.rootViewController = naVC;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {

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
