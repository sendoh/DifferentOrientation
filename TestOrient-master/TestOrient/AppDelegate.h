//
//  AppDelegate.h
//  TestOrient
//
//  Created by Quy Sang Le on 2/1/13.
//  Copyright (c) 2013 Quy Sang Le. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyNavigationControllerViewController.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) MyNavigationControllerViewController *myNavController;

- (void) reloadAppDelegateRootViewControllerLandscape;
- (void) reloadAppDelegateRootViewController;
@end
