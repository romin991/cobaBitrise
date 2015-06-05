//
//  MasterViewController.h
//  ScaryBug
//
//  Created by Tamás Bazsonyi on 7/18/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (strong) NSMutableArray *bugs;

@end
