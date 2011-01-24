//
//  TwoByTwoCellView.h
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 10-12-02.
//  Copyright 2010 RANDOMTYPE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface TwoByTwoCellView : UITableViewCell {
	UILabel *topLeftValue;
	UILabel *topRightValue;
	UILabel *bottomLeftValue;
	UILabel *bottomRightValue;
	
	UILabel *topLeftLabel;
	UILabel *topRightLabel;
	UILabel *bottomLeftLabel;
	UILabel *bottomRightLabel;
}

@property (nonatomic, retain) UILabel *topLeftValue;
@property (nonatomic, retain) UILabel *topRightValue;
@property (nonatomic, retain) UILabel *bottomLeftValue;
@property (nonatomic, retain) UILabel *bottomRightValue;

@property (nonatomic, retain) UILabel *topLeftLabel;
@property (nonatomic, retain) UILabel *topRightLabel;
@property (nonatomic, retain) UILabel *bottomLeftLabel;
@property (nonatomic, retain) UILabel *bottomRightLabel;


@end
