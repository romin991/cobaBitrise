//
//  ScaryBugDoc.m
//  ScaryBug
//
//  Created by Tamás Bazsonyi on 7/19/14.
//  Copyright (c) 2014 Tamás Bazsonyi. All rights reserved.
//

#import "ScaryBugDoc.h"

@implementation ScaryBugDoc

@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {
    if ((self = [super init])) {
        self.data = [[ScaryBugData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}

@end
