//
//  ScaryBugData.h
//  ScaryBug
//
//  Created by Tamás Bazsonyi on 7/19/14.
//  Copyright (c) 2014 Tamás Bazsonyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
