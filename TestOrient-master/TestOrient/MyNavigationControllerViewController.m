//
//  MyNavigationControllerViewController.m
//  TestOrient
//
//  Created by Quy Sang Le on 2/2/13.
//  Copyright (c) 2013 Quy Sang Le. All rights reserved.
//

#import "MyNavigationControllerViewController.h"

@interface MyNavigationControllerViewController ()

@end

@implementation MyNavigationControllerViewController
@synthesize supportedInterfaceOrientatoin = _supportedInterfaceOrientatoin;
@synthesize orientation = _orientation;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _supportedInterfaceOrientatoin = UIInterfaceOrientationMaskLandscape;
        _orientation = UIInterfaceOrientationLandscapeLeft;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldAutorotate
{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations

{
    return _supportedInterfaceOrientatoin;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.orientation;
}



@end
