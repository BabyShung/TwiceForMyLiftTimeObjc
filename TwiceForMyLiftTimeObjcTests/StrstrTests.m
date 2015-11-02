//
//  StrstrTests.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/1/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Strstr.h"
#import "StringHelper.h"

@interface StrstrTests : XCTestCase

@end

@implementation StrstrTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testStrstrNil // 0-X, X-0, 0-0
{
    
    Strstr *strstr = [Strstr new];
    NSString *source;
    NSString *target;
    NSInteger result;
    
    source = [StringHelper randomString_fixedLength];
    target = nil;
    result = [strstr strstr_source:source target:target];
    XCTAssertEqual(result, -1, @"");
    
    source = nil;
    target = [StringHelper randomString_fixedLength];
    result = [strstr strstr_source:source target:target];
    XCTAssertEqual(result, -1, @"");
    
    source = nil;
    target = nil;
    result = [strstr strstr_source:source target:target];
    XCTAssertEqual(result, -1, @"");
}

- (void)testStrstrTargetLonger //Special owned: tttttt sss
{
    Strstr *strstr = [Strstr new];
    NSString *source;
    NSString *target;
    NSInteger result;
    
    for (NSInteger i = 1; i <= 5; i++) {
        source = [StringHelper randomString];
        target = [StringHelper randomString_Length:source.length + i];
        result = [strstr strstr_source:source target:target];
        XCTAssertEqual(result, -1, @"");
    }
}

- (void)testStrStrSmall // 1-1, 1-2, ... 5-5
{
//    Strstr *strstr = [Strstr new];
//    NSString *source;
//    NSInteger result;
//
//    for (NSInteger i = 0; i < 5; i++) {
//        source = [StringHelper randomString_Length:i + 1];
//        for (NSInteger j = 0; j < source.length; j++) {
//            NSString *target1 = [source substringFromIndex:j];
//            result = [strstr strstr_source:source target:target1];
//            XCTAssertEqual(result, j, @"");
//
//            NSString *target2 = [source substringToIndex:source.length - j - 1];
//            result = [strstr strstr_source:source target:target2];
//            XCTAssertEqual(result, j, @"");
//        }
//    }
}

- (void)testStrStrMedium // 10-10, 10-11, ... 20-20
{
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
