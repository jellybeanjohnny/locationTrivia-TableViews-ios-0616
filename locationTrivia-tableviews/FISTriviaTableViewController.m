//
//  FISTriviaTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Matt Amerige on 6/23/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTriviaTableViewController.h"

@implementation FISTriviaTableViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	self.tableView.accessibilityIdentifier = @"Trivia Table";
	self.tableView.accessibilityLabel = @"Trivia Table";
	
	NSLog(@"%@", self.trivia);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.trivia.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"triviaCell"];
	
	// get trivium object for this row
	FISTrivium *trivium = self.trivia[indexPath.row];
	
	cell.textLabel.text = trivium.content;
	
	return cell;
}

@end
