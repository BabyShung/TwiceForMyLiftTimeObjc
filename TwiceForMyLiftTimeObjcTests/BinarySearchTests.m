//
//  BinarySearchTests.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/8/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BinarySearch.h"
#import "RandomNumber.h"

@interface BinarySearchTests : XCTestCase

@end

@implementation BinarySearchTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testNil
{
    XCTAssertEqual([self bsHelper_nums:nil target:arc4random_uniform(30)], -1, @"");
}

- (void)testNormal
{
    NSArray *randomArray = [RandomNumber getRandomAscendingArray_count:[RandomNumber getRandomNumberBetween:1 to:30]];
    NSInteger randomIndex = [RandomNumber getRandomNumber_upperBound:randomArray.count];
    NSInteger randomTarget = [randomArray[randomIndex] integerValue];
    [self bsHelper_nums:randomArray target:randomTarget];
}

- (NSInteger)bsHelper_nums:(NSArray *)nums target:(NSInteger)target
{
    BinarySearch *bs = [BinarySearch new];
    return [bs binarySearch_nums:nums target:target];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
