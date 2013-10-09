//
//  KMCViewController.m
//  ModalTableExample
//
//  Created by Kyle Clegg on 10/8/13.
//  Copyright (c) 2013 Kyle Clegg. All rights reserved.
//

#import "KMCViewController.h"

@interface KMCViewController ()

@property (strong, nonatomic) NSArray *statesArray;
@property (weak, nonatomic) IBOutlet UIButton *stateButton;

@end

@implementation KMCViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.statesArray = @[ @"Alaska", @"Arizona", @"Arkansas", @"California", @"Colorado", @"Connecticut",
                        @"Delaware", @"Dist of Columbia", @"Florida", @"Georgia", @"Hawaii", @"Idaho",
                        @"Illinois", @"Indiana", @"Iowa", @"Kansas", @"Kentucky", @"Louisiana",@"Maine",
                        @"Maryland", @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri",
                        @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey", @"New Mexico",
                        @"New York", @"North Carolina", @"North Dakota", @"Ohio", @"Oklahoma", @"Oregon",
                        @"Pennsylvania", @"Rhode Island", @"South Carolina", @"South Dakota", @"Tennessee",
                        @"Texas", @"Utah", @"Vermont", @"Virginia", @"Washington", @"West Virginia",
                        @"Wisconsin", @"Wyoming" ];
}

- (IBAction)selectStatePressed:(id)sender
{
  UINavigationController *navigationController = (UINavigationController *)[self.storyboard instantiateViewControllerWithIdentifier:@"SimpleTableVC"];
  KMCSimpleTableViewController *tableViewController = (KMCSimpleTableViewController *)[[navigationController viewControllers] objectAtIndex:0];
  tableViewController.tableData = self.statesArray;
  tableViewController.navigationItem.title = @"States";
  tableViewController.delegate = self;
  [self presentViewController:navigationController animated:YES completion:nil];
}

- (void)itemSelectedatRow:(NSInteger)row
{
  NSLog(@"row %lu selected", (unsigned long)row);
  
  [self.stateButton setTitle:[self.statesArray objectAtIndex:row] forState:UIControlStateNormal];
}

@end