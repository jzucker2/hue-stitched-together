//
//  SecondViewController.m
//  HueStitchedTogether
//
//  Created by Jordan Zucker on 2/8/14.
//  Copyright (c) 2014 Jordan Zucker. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSString *build = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    _buildLabel.text = [NSString stringWithFormat:@"build: %@", build];
    _versionLabel.text = [NSString stringWithFormat:@"version: %@", version];;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
