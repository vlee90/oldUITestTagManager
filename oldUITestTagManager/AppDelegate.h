//
//  AppDelegate.h
//  oldUITestTagManager
//
//  Created by Vincent Lee on 2/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TAGManager;
@class TAGContainer;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic,  strong) TAGManager *tagManager;
@property (nonatomic, strong) TAGContainer *container;
@property (strong, nonatomic) UIWindow *window;


@end

