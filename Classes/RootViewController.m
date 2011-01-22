//
//  RootViewController.m
//  TwoByTwoViewCell
//
//  Created by Gavin Miller on 11-01-15.
//  Copyright 2011 RANDOMTYPE. All rights reserved.
//

#import "RootViewController.h"
#import "ViewCellFactory.h"

#define TWO_BY_TWO_CELL 0

@implementation RootViewController

- (void)viewWillAppear:(BOOL)animated {
	
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)dealloc {
    [super dealloc];
}

#pragma mark -
#pragma mark UITableView Delegates/DataSources

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	if (indexPath.section == TWO_BY_TWO_CELL) {
		return 180;
	}
	
	return 44;
}

- (UITableViewCell *)tableView:(UITableView *)localTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	UITableViewCell *cell = nil;
	
	if (indexPath.section == TWO_BY_TWO_CELL) {
		cell = [ViewCellFactory imageCellWithFollowing:@"18"
												tweets:@"204"
											 followers:@"215,812" 
											 favorites:@"0" 
											 tableView:localTableView];
	}
		
	return cell;
}

@end

