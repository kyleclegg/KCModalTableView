//
//  KMCSimpleTableViewController.m
//  ModalTableExample
//
//  Created by Kyle Clegg on 10/8/13.
//  Copyright (c) 2013 Kyle Clegg. All rights reserved.
//

#import "KMCSimpleTableViewController.h"

@interface KMCSimpleTableViewController ()

@end

@implementation KMCSimpleTableViewController

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return self.tableData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *cellIdentifier = @"Cell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  if (!cell) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
  }
  
  cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
  
  return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  
  if ([self.delegate respondsToSelector:@selector(itemSelectedatRow:)]) {
    [self.delegate itemSelectedatRow:indexPath.row];
    [self dismissViewControllerAnimated:YES completion:nil];
  }
}

#pragma mark - Actions

- (IBAction)cancelPressed:(id)sender
{
  [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
