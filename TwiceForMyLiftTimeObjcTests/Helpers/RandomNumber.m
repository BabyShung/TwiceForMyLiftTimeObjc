//
//  RandomNumber.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/8/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import "RandomNumber.h"

@implementation RandomNumber

+ (NSInteger)getRandomNumber
{
    return arc4random();
}

+ (NSInteger)getRandomNumber_upperBound:(NSInteger)upperBound
{
    return arc4random_uniform((int)upperBound);
}

+ (NSInteger)getRandomNumberBetween:(NSInteger)from to:(NSInteger)to
{
    return (NSInteger)from + arc4random() % (to - from + 1);
}

@end
