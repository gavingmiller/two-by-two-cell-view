//
//  TwoByTwoViewCellAppDelegate.m
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 11-01-15.
//  Copyright 2011 RANDOMTYPE. All rights reserved.
//

#import "TwoByTwoViewCellAppDelegate.h"
#import "RootViewController.h"


@implementation TwoByTwoViewCellAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    // Add the navigation controller's view to the window and display.
    [self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

