//
//  ComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Kenneth Chou on 8/25/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTests : XCTestCase

@end

@implementation ComposeCommentViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testForWritingCommentSetToYesIfText {
    ComposeCommentView *view = [[ComposeCommentView alloc] init];
    [view setText:@"Hey"];
    
    XCTAssertEqual(view.isWritingComment, YES);
}

- (void)testForWritingCommentSetToNoIfNoText {
    ComposeCommentView *view = [[ComposeCommentView alloc] init];
    [view setText:@""];

    XCTAssertEqual(view.isWritingComment, NO);
}

@end
