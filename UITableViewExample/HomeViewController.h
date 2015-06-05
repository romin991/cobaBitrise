//
//  HomeViewController.h
//  UITableViewExample
//
//  Created by Mani Shankar on 16/06/14.
//  Copyright (c) 2014 makemegeek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableViewObject;
@property (nonatomic,retain) NSMutableArray *tableData;
@end
