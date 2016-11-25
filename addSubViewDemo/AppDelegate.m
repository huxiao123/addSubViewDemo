//
//  AppDelegate.m
//  addSubViewDemo
//
//  Created by 胡啸－ Mac on 16/11/25.
//  Copyright © 2016年 gzsc-hx. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *vc = [[ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = nav;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
   
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
   }

- (void)applicationDidBecomeActive:(UIApplication *)application {
   }

- (void)applicationWillTerminate:(UIApplication *)application {
   
}

@end
