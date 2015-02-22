//
//  DoItItem.h
//  SampleTodo
//
//  Created by d on 21/2/15.
//  Copyright (c) 2015 d. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DoItItem : NSObject

@property NSString *itemName;
@property (getter=isCompleted)BOOL completed;
@property (readonly)NSDate *creationDate;
@property (readonly)NSDate *completionDate;

@end
