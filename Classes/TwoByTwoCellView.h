//
//  TwoByTwoCellView.h
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 10-12-02.
//  Copyright 2010 RT Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TwoByTwoCellView : UITableViewCell {
	UILabel *topLeftValue;
	UILabel *topRightValue;
	UILabel *bottomLeftValue;
	UILabel *bottomRightValue;
}

@property (nonatomic, retain) UILabel *topLeftValue;
@property (nonatomic, retain) UILabel *topRightValue;
@property (nonatomic, retain) UILabel *bottomLeftValue;
@property (nonatomic, retain) UILabel *bottomRightValue;

@end
