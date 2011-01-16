//
//  ViewCellFactory.h
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 10-12-05.
//  Copyright 2011 RANDOMTYPE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ViewCellFactory : NSObject {

}

+ (UITableViewCell *)cellWithFloorSpace:(NSString *)floorSpace 
								stories:(NSString *)stories 
							  bathrooms:(NSString *)bathrooms 
							   bedrooms:(NSString *)bedrooms 
							  tableView:(UITableView *)tableView;

@end
