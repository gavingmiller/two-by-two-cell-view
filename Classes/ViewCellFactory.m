//
//  ViewCellFactory.m
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 10-12-05.
//  Copyright 2010 RANDOMTYPE. All rights reserved.
//

#import "ViewCellFactory.h"
#import "TwoByTwoCellView.h"
#import "TwoByTwoButtonCellView.h"

@implementation ViewCellFactory

+ (UITableViewCell *)imageCellWithFollowing:(NSString *)following 
									 tweets:(NSString *)tweets
								  followers:(NSString *)followers 						
								  favorites:(NSString *)favorites 
								  tableView:(UITableView *)tableView {
	
	static NSString *TwoByTwoCellIdentifier = @"TwoByTwoCell";

	TwoByTwoCellView *cell = 
		(TwoByTwoCellView *) [tableView dequeueReusableCellWithIdentifier:TwoByTwoCellIdentifier];
		
	if (cell == nil) {
		cell = [[[TwoByTwoCellView alloc] 
				 initWithStyle:UITableViewCellStyleDefault 
				 reuseIdentifier:TwoByTwoCellIdentifier] 
				autorelease];
	}
	
	cell.topLeftValue.text     = following;
	cell.topRightValue.text    = tweets;
	cell.bottomLeftValue.text  = followers;
	cell.bottomRightValue.text = favorites;
	
	return cell;
}

@end
