//
//  StringHelper.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/1/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import "StringHelper.h"
#import "RandomNumber.h"

@implementation StringHelper

+ (NSString *)randomString
{
    return [self randomString_Length:[RandomNumber getRandomNumber_upperBound:30]];
}

+ (NSString *)randomString_fixedLength
{
    return [self randomString_Length:20];
}

+ (NSString *)randomString_Length:(NSInteger)len
{
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    for (int i = 0; i < len; i++) {
        [randomString appendFormat:@"%C",[letters characterAtIndex: arc4random_uniform((int)[letters length])]];
    }
    return randomString;
}

@end
