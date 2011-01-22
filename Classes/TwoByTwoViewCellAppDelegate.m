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
    [self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[self.navigationController release];
	[self.window release];
	
	self.navigationController = nil;
	self.window = nil;
	
	[super dealloc];
}


@end

