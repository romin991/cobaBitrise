//
//  DetailViewController.h
//  ScaryBug
//
//  Created by Tamás Bazsonyi on 7/18/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScaryBugDoc.h"
#import "RateView.h"

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate, RateViewDelegate>

@property (strong, nonatomic) ScaryBugDoc* detailItem;
@property (weak, nonatomic) IBOutlet UIImageView *bugImageView;

@property (strong, nonatomic) IBOutlet RateView *rateView;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (strong, nonatomic) UIImagePickerController *picker;

- (IBAction)addPictureTapped:(id)sender;
@end
