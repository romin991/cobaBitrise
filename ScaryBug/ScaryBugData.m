//
//  ScaryBugData.m
//  ScaryBug
//
//  Created by Tamás Bazsonyi on 7/19/14.
//  Copyright (c) 2014 Tamás Bazsonyi. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
