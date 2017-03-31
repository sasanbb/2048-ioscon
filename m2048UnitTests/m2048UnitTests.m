//
//  m2048UnitTests.m
//  m2048UnitTests
//
//  Created by Chris Stott on 2017-03-31.
//  Copyright © 2017 Danqing. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "M2ViewController.h"

@interface m2048UnitTests : XCTestCase

@end

@implementation m2048UnitTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testAdding1And1 {
    XCTAssertEqual(2, [M2ViewController addTiles: 1 and: 1]);
}

- (void)testAdding2And2 {
    XCTAssertEqual(4, [M2ViewController addTiles: 2 and: 2]);
}

- (void)testAdding4And4 {
    XCTAssertEqual(8, [M2ViewController addTiles: 4 and: 3]);
}


@end
