//
//  FirstViewController.h
//  HueStitchedTogether
//
//  Created by Jordan Zucker on 2/8/14.
//  Copyright (c) 2014 Jordan Zucker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, weak) IBOutlet UIWebView *lightWebView;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *refreshBarButtonItem;

- (IBAction)refreshAction:(id)sender;

@end
