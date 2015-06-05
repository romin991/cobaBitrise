//
//  ScaryBugTests.m
//  ScaryBugTests
//
//  Created by Tamás Bazsonyi on 7/18/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ScaryBugTests.h"
#import "KIFUITestActor.h"


@implementation ScaryBugTests

- (void)beforeEach
{

}

- (void)afterEach
{

}

- (void)testSuccessfulLogin
{
    [tester enterText:@"user@example.com" intoViewWithAccessibilityLabel:@"Login User Name"];
    [tester enterText:@"thisismypassword" intoViewWithAccessibilityLabel:@"Login Password"];
    [tester tapViewWithAccessibilityLabel:@"Log In"];
    
    // Verify that the login succeeded
    [tester waitForTappableViewWithAccessibilityLabel:@"Welcome"];
}


@end
