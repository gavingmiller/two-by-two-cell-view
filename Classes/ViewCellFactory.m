//
//  ViewCellFactory.m
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 10-12-05.
//  Copyright 2010 RT Labs. All rights reserved.
//

#import "ViewCellFactory.h"
#import "TwoByTwoCellView.h"

@implementation ViewCellFactory

+ (UITableViewCell *)cellWithFloorSpace:(NSString *)floorSpace 
								stories:(NSString *)stories 
							  bathrooms:(NSString *)bathrooms 
							   bedrooms:(NSString *)bedrooms
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
	
	cell.topLeftValue.text = floorSpace;
	cell.topRightValue.text = stories;
	cell.bottomLeftValue.text = bathrooms;
	cell.bottomRightValue.text = bedrooms;
	
	return cell;
}	

@end
