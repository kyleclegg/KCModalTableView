//
//  KMCSimpleTableViewController.h
//  ModalTableExample
//
//  Created by Kyle Clegg on 10/8/13.
//  Copyright (c) 2013 Kyle Clegg. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KMCSimpleTableViewControllerDelegate <NSObject>

@required
- (void)itemSelectedatRow:(NSInteger)row;

@end

@interface KMCSimpleTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *tableData;
@property (assign, nonatomic) id<KMCSimpleTableViewControllerDelegate> delegate;

@end
