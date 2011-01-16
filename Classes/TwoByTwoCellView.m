//
//  TwoByTwoCellView.m
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 10-12-02.
//  Copyright 2010 RT Labs. All rights reserved.
//

#import "TwoByTwoCellView.h"

@interface TwoByTwoCellView()

- (UILabel *)newValueLabelWithFrame:(CGRect)frame;
- (UILabel *)newTitleLabelWithFrame:(CGRect)frame text:(NSString *)text;

@end


@implementation TwoByTwoCellView

@synthesize topLeftValue, topRightValue, bottomLeftValue, bottomRightValue;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
		UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 300, 180)];
		containerView.backgroundColor = [UIColor clearColor];
		
		// Top Left
		[containerView addSubview:
			[self newTitleLabelWithFrame:CGRectMake(0, 50, 150, 20) 
									text:@"following"]];
		topLeftValue = [self newValueLabelWithFrame:CGRectMake(0, 0, 150, 50)];
		[containerView addSubview:topLeftValue];
						
		
		// Top Right
		[containerView addSubview: 
			[self newTitleLabelWithFrame:CGRectMake(150, 50, 150, 20) 
									text:@"tweets"]];
		topRightValue = [self newValueLabelWithFrame:CGRectMake(150, 0, 150, 50)];
		[containerView addSubview:topRightValue];
		
		
		// Bottom Left
		[containerView addSubview:
			[self newTitleLabelWithFrame:CGRectMake(0, 140, 150, 20) 
								 text:@"followers"]];
		bottomLeftValue = [self newValueLabelWithFrame:CGRectMake(0, 90, 150, 50)];
		[containerView addSubview:bottomLeftValue];
		
		
		// Bottom Right
		[containerView addSubview:
			[self newTitleLabelWithFrame:CGRectMake(150, 140, 150, 20) 
								 text:@"favorites"]];
		bottomRightValue = [self newValueLabelWithFrame:CGRectMake(150, 90, 150, 50)];
		[containerView addSubview:bottomRightValue];

		
		[self addSubview:containerView];
		[containerView release];
		
		self.backgroundColor = [UIColor clearColor];
		
		// Create the 4x4 pattern
		UIImageView *imageView = [[[UIImageView alloc] init] autorelease];
		imageView.image = [UIImage imageNamed:@"2x2-background@2x.png"];
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

- (UILabel *)newValueLabelWithFrame:(CGRect)frame {
	UILabel *label = [[[UILabel alloc] initWithFrame:frame] autorelease];
	label.textColor = [UIColor darkTextColor];
	label.textAlignment = UITextAlignmentCenter;
	label.font = [UIFont boldSystemFontOfSize:32];
	label.backgroundColor = [UIColor clearColor];

	return label;
}

- (UILabel *)newTitleLabelWithFrame:(CGRect)frame text:(NSString *)text {
	UILabel *label = [[[UILabel alloc] initWithFrame:frame] autorelease];
	label.text = text;
	label.textColor = [UIColor colorWithRed:51.0f/255.0f green:102.0f/255.0f blue:153.0f/255.0f alpha:1.0f];
	label.textAlignment = UITextAlignmentCenter;
	label.font = [UIFont boldSystemFontOfSize:12];	
	label.backgroundColor = [UIColor clearColor];
	
	return label;
}

- (void)dealloc {
    [super dealloc];
	
	[topLeftValue release];
	[topRightValue release];
	[bottomLeftValue release];
	[bottomRightValue release];
}


@end
