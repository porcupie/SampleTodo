//
//  DoItItem.m
//  SampleTodo
//
//  Created by d on 21/2/15.
//  Copyright (c) 2015 d. All rights reserved.
//

#import "DoItItem.h"

// private interface (as class extension)
@interface DoItItem ()

@property (readwrite)NSDate *creationDate;
@property (readwrite)NSDate *completionDate;

@end


@implementation DoItItem

/*
//- (void)setCompleted:(BOOL)completed {
    _completed = completed;
    // if completed, set date
    if (completed == YES) {
        self.completionDate = [NSDate new];
    } else {
        self.completionDate = nil;
    }
}
 */

@end
