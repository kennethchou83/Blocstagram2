//
//  TableViewCellHeightTests.m
//  Blocstagram
//
//  Created by Kenneth Chou on 8/25/16.
//  Copyright © 2016 Kenneth Chou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MediaTableViewCell.h"
#import "Media.h"
#import "User.h"
@interface TableViewCellHeightTests : XCTestCase

@end

@implementation TableViewCellHeightTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHeight {
    Media *media = [[Media alloc] init];
    media.image = [UIImage imageNamed:@"insta-test"];
    
    User *user = [[User alloc] init];
    user.userName = @"Ellen";
    media.user = user;
    
    XCTAssertEqual([MediaTableViewCell heightForMediaItem:media width:300 traitCollection:[UITraitCollection traitCollectionWithUserInterfaceIdiom:UIUserInterfaceIdiomPhone]], 238.0);
}
@end
