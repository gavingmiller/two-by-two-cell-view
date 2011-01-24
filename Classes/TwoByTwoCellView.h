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
	UILabel *topLeftTitle;
	UILabel *topLeftValue;
	
	UILabel *topRightTitle;
	UILabel *topRightValue;
	
	UILabel *bottomLeftTitle;
	UILabel *bottomLeftValue;
	
	UILabel *bottomRightTitle;
	UILabel *bottomRightValue;
}

@property (nonatomic, retain) UILabel *topLeftTitle;
@property (nonatomic, retain) UILabel *topLeftValue;

@property (nonatomic, retain) UILabel *topRightTitle;
@property (nonatomic, retain) UILabel *topRightValue;

@property (nonatomic, retain) UILabel *bottomLeftTitle;
@property (nonatomic, retain) UILabel *bottomLeftValue;

@property (nonatomic, retain) UILabel *bottomRightTitle;
@property (nonatomic, retain) UILabel *bottomRightValue;

@end
