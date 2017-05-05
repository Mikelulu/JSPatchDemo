//
//  AppDelegate.m
//  JSPatchDemo
//
//  Created by admin on 2017/5/5.
//  Copyright © 2017年 LK. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatchPlatform/JSPatch.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
        [JSPatch testScriptInBundle]; ///只用于本地测试
    
    
//    [JSPatch startWithAppKey:JSPATH_APP_ID];
//    
//    [JSPatch setupRSAPublicKey:@"-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDa74r6JC4iZhD7O86M0UalLj5F\nkAhVunpywGj7WzV3vN4nifPuHcGUd50EPsXRD/0/0C2K1DSs3oXIr8tYnd/FnZ9R\ncGtXhZtdQd32ZPIDA59DCcFhBeWT9fFzqy8ZYhfG/xfbzrqwgDqjT62M71qEPn08\nCMyxqzn7CLv3MMNuEQIDAQAB\n-----END PUBLIC KEY-----"];
//    
//    /// 在 debug 模式下测试补丁
//#ifdef DEBUG
//    [JSPatch setupDevelopment];
//#endif
//    [JSPatch sync];
 
    
    return YES;
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
