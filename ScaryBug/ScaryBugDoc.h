//
//  ScaryBugDoc.h
//  ScaryBug
//
//  Created by Tamás Bazsonyi on 7/19/14.
//  Copyright (c) 2014 Tamás Bazsonyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScaryBugData.h"

@interface ScaryBugDoc : NSObject

@property (strong) ScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage;

@end
