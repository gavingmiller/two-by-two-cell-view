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

+ (UITableViewCell *)imageCellWithFollowing:(NSString *)following 
									 tweets:(NSString *)tweets
								  followers:(NSString *)followers 						
								  favorites:(NSString *)favorites 
								  tableView:(UITableView *)tableView;
@end
