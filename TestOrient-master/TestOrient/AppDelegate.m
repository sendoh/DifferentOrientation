//
//  AppDelegate.m
//  TestOrient
//
//  Created by Quy Sang Le on 2/1/13.
//  Copyright (c) 2013 Quy Sang Le. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate
@synthesize myNavController;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.myNavController = [[MyNavigationControllerViewController alloc] initWithRootViewController:self.viewController];
    [self.myNavController setNavigationBarHidden:YES];
    self.window.rootViewController = self.myNavController;
    
//    self.window.rootViewController = self.viewController;

    [self.window makeKeyAndVisible];
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

- (void) reloadAppDelegateRootViewController{
    [[[UIApplication sharedApplication].delegate window] setRootViewController:nil];
    [(MyNavigationControllerViewController *)self.myNavController setOrientation:UIInterfaceOrientationPortrait];
    [(MyNavigationControllerViewController *)self.myNavController setSupportedInterfaceOrientatoin:UIInterfaceOrientationMaskPortrait];
    [[[UIApplication sharedApplication].delegate window] setRootViewController:self.myNavController];
}

- (void) reloadAppDelegateRootViewControllerLandscape{
    [[[UIApplication sharedApplication].delegate window] setRootViewController:nil];
    [(MyNavigationControllerViewController *)self.myNavController setOrientation:UIInterfaceOrientationLandscapeLeft];
    [(MyNavigationControllerViewController *)self.myNavController setSupportedInterfaceOrientatoin:UIInterfaceOrientationMaskLandscape];
    [[[UIApplication sharedApplication].delegate window] setRootViewController:self.myNavController];
}

@end
