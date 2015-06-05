//
//  DetailViewController.m
//  ScaryBug
//
//  Created by Tamás Bazsonyi on 7/18/14.
//  Copyright (c) 2014 Tamás Bazsonyi. All rights reserved.
//

#import "DetailViewController.h"
#import "ScaryBugDoc.h"
#import "ScaryBugData.h"
#import "UIImageExtras.h"

@interface DetailViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UILabel *bugTitle;
- (void)configureView;
@end

@implementation DetailViewController

@synthesize picker = _picker;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }

    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }        
}
- (IBAction)addPictureTapped:(id)sender {
    if (self.picker == nil) {
        self.picker = [[UIImagePickerController alloc] init];
        self.picker.delegate = self;
        self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        self.picker.allowsEditing = NO;
    }
    [self presentViewController:_picker animated:YES completion:nil];
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        self.bugImageView.image = [self.detailItem fullImage];
        self.bugTitle.text = [[self.detailItem data] title];
        
        self.rateView.notSelectedImage = [UIImage imageNamed:@"shockedface2_empty.png"];
        self.rateView.halfSelectedImage = [UIImage imageNamed:@"shockedface2_half.png"];
        self.rateView.fullSelectedImage = [UIImage imageNamed:@"shockedface2_full.png"];
        self.rateView.editable = YES;
        self.rateView.maxRating = 5;
        self.rateView.delegate = self;
        
        self.bugTitle.text = self.detailItem.data.title;
        self.rateView.rating = self.detailItem.data.rating;
        self.bugImageView.image = self.detailItem.fullImage;
        self.title = @"Rate it!";
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation {
    return YES;
}

- (void)rateView:(RateView *)rateView ratingDidChange:(float) newRating
{
    self.detailItem.data.rating = newRating;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Split view

- (void)splitViewController:(UISplitViewController *)splitController willHideViewController:(UIViewController *)viewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)popoverController
{
    barButtonItem.title = NSLocalizedString(@"Master", @"Master");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
    self.masterPopoverController = popoverController;
}

- (void)splitViewController:(UISplitViewController *)splitController willShowViewController:(UIViewController *)viewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    // Called when the view is shown again in the split view, invalidating the button and popover controller.
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
    self.masterPopoverController = nil;
}

#pragma mark UIImagePickerControllerDelegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *fullImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImage *thumbImage = [fullImage imageByScalingAndCroppingForSize:CGSizeMake(44, 44)];
    self.detailItem.fullImage = fullImage;
    self.detailItem.thumbImage = thumbImage;
    self.bugImageView.image = fullImage;
}


@end
