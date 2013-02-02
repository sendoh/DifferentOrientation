//
//  ViewController.m
//  TestOrient
//
//  Created by Quy Sang Le on 2/1/13.
//  Copyright (c) 2013 Quy Sang Le. All rights reserved.
//

#import "ViewController.h"
#import "MyNavigationControllerViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated{
    [self.navigationController presentedViewController];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pushTo:(id)sender {
    TestViewController *testVC = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    [self.navigationController pushViewController:testVC animated:YES];
    [(AppDelegate *)[[UIApplication sharedApplication] delegate] performSelector:@selector(reloadAppDelegateRootViewController) withObject:nil afterDelay:1.0];
    
}

- (BOOL)shouldAutorotate
{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations

{
    return UIInterfaceOrientationMaskLandscape;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

@end
