//
//  TwoByTwoViewCellAppDelegate.h
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 11-01-15.
//  Copyright 2011 RANDOMTYPE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoByTwoViewCellAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

