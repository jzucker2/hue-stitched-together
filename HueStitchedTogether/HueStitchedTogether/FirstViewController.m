//
//  FirstViewController.m
//  HueStitchedTogether
//
//  Created by Jordan Zucker on 2/8/14.
//  Copyright (c) 2014 Jordan Zucker. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _lightWebView.delegate = self;
    [self loadWebView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadWebView
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"hue-controlpad"]];
    [_lightWebView loadRequest:[NSURLRequest requestWithURL:url]];
    _lightWebView.scrollView.scrollEnabled = NO;
    _lightWebView.scrollView.bounces = NO;
}

#pragma mark - UINavigationBar Action

- (IBAction)refreshAction:(id)sender
{
    [self loadWebView];
}

#pragma mark - UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"did start load");
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"did finish");
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"did fail");
}

@end
