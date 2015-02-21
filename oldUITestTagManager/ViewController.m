//
//  ViewController.m
//  oldUITestTagManager
//
//  Created by Vincent Lee on 2/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "TAGDataLayer.h"
#import "TAGManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *eventButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"HI");
}

-(void)viewDidAppear:(BOOL)animated {
    [self viewDidAppear:animated];
    TAGDataLayer *dataLayer = [TAGManager instance].dataLayer;
    [dataLayer push:@{@"event" : @"screenLoads",
                      @"screenName": @"Home Screen"}];
}

- (IBAction)eventButtonPressed:(id)sender {
    NSLog(@"Button Pressed");
    TAGDataLayer *dataLayer = [TAGManager instance].dataLayer;
    [dataLayer push:@{@"event" : @"eventButtonPressed"}];
//    [dataLayer pushValue:@"event" forKey:@"eventButtonPressed"];
}


@end
