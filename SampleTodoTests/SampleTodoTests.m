//
//  SampleTodoTests.m
//  SampleTodoTests
//
//  Created by d on 11/2/15.
//  Copyright (c) 2015 d. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

// import app specific headers for testing
#import "AppDelegate.h"
#import "DoItListTableViewController.h"

@interface SampleTodoTests : XCTestCase {


// private instance variables to hold refs to app, delegate, etc (had to add {} also)
@private
    UIApplication *app;
    AppDelegate *appDelegate;
    DoItListTableViewController *listController;
    UIView *listView;

}
@end

@implementation SampleTodoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    app = [UIApplication sharedApplication];
    listController = (DoItListTableViewController*)[app delegate];
    listView = listController.view;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

// did view get created?
- (void)testDoItListView {
    XCTAssertNotNil(listView, @"Cannot find list view");
}
// test the click of completion
- (void)testCompletion {
    
}

@end
