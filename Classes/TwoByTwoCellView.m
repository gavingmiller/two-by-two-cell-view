//
//  TwoByTwoCellView.m
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 10-12-02.
//  Copyright 2010 RANDOMTYPE. All rights reserved.
//

#import "TwoByTwoCellView.h"

@interface TwoByTwoCellView()

- (UILabel *)valueLabelWithFrame:(CGRect)frame;
- (UILabel *)titleLabelWithFrame:(CGRect)frame text:(NSString *)text;

@end


@implementation TwoByTwoCellView

@synthesize topLeftValue, topRightValue, bottomLeftValue, bottomRightValue;
@synthesize topLeftLabel, topRightLabel, bottomLeftLabel, bottomRightLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
		UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 300, 180)];
		containerView.backgroundColor = [UIColor clearColor];
		
		
		// Top Left
		self.topLeftLabel = [self titleLabelWithFrame:CGRectMake(0, 50, 150, 20) 
													text:@"following"];
		self.topLeftValue = [self valueLabelWithFrame:CGRectMake(0, 0, 150, 50)];
		[containerView addSubview:topLeftLabel];
		[containerView addSubview:topLeftValue];
						
		
		// Top Right
		self.topRightLabel = [self titleLabelWithFrame:CGRectMake(150, 50, 150, 20) 
													 text:@"tweets"];
		self.topRightValue = [self valueLabelWithFrame:CGRectMake(150, 0, 150, 50)];
		[containerView addSubview:topRightLabel];
		[containerView addSubview:topRightValue];
		
		
		// Bottom Left
		self.bottomLeftLabel = [self titleLabelWithFrame:CGRectMake(0, 140, 150, 20) 
													   text:@"followers"];
		self.bottomLeftValue = [self valueLabelWithFrame:CGRectMake(0, 90, 150, 50)];
		[containerView addSubview:bottomLeftLabel];
		[containerView addSubview:bottomLeftValue];
		
		
		// Bottom Right
		self.bottomRightLabel = [self titleLabelWithFrame:CGRectMake(150, 140, 150, 20) 
														text:@"favorites"];
		bottomRightValue = [self valueLabelWithFrame:CGRectMake(150, 90, 150, 50)];
		[containerView addSubview:bottomRightLabel];
		[containerView addSubview:bottomRightValue];

		
		[self addSubview:containerView];
		[containerView release];
		
		self.backgroundColor = [UIColor clearColor];
		
		// Create the 2x2 pattern
		UIImageView *imageView = [[[UIImageView alloc] init] autorelease];
		imageView.image = [UIImage imageNamed:@"2x2-background.png"];
		imageView.layer.cornerRadius = 15.0;
		imageView.layer.masksToBounds = YES;
		imageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
		imageView.layer.borderWidth = 1.5;
		imageView.backgroundColor = [UIColor whiteColor];
		self.backgroundView = imageView;
		
		self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (UILabel *)valueLabelWithFrame:(CGRect)frame {
	UILabel *label = [[[UILabel alloc] initWithFrame:frame] autorelease];
	label.textColor = [UIColor darkTextColor];
	label.textAlignment = UITextAlignmentCenter;
	label.font = [UIFont boldSystemFontOfSize:32];
	label.backgroundColor = [UIColor clearColor];

	return label;
}

- (UILabel *)titleLabelWithFrame:(CGRect)frame text:(NSString *)text {
	UILabel *label = [[[UILabel alloc] initWithFrame:frame] autorelease];
	label.text = text;
	label.textColor = [UIColor colorWithRed:51.0f/255.0f green:102.0f/255.0f blue:153.0f/255.0f alpha:1.0f];
	label.textAlignment = UITextAlignmentCenter;
	label.font = [UIFont boldSystemFontOfSize:12];	
	label.backgroundColor = [UIColor clearColor];
	
	return label;
}

- (void)dealloc {
	[self.topLeftValue release];
	[self.topRightValue release];
	[self.bottomLeftValue release];
	[self.bottomRightValue release];
	
	[self.topLeftLabel release];
	[self.topRightLabel release];
	[self.bottomLeftLabel release];
	[self.bottomRightLabel release];
	
	[super dealloc];
}


@end
