//
//  MediaTests.m
//  Blocstagram
//
//  Created by Kenneth Chou on 8/25/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"

@interface MediaTests : XCTestCase

@end

@implementation MediaTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatMediaInitializationWorks {
    NSDictionary *standardResolutionDictionary = @{ @"url": @"http://example.com" };
    NSDictionary *imagesDictionary = @{ @"standard_resolution": standardResolutionDictionary };
    NSDictionary *sourceDictionary = @{ @"id": @"1234",
                                          @"images" : imagesDictionary
                                      };
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertNotNil(testMedia.caption, @"The caption should not be nil");
    
}

@end
