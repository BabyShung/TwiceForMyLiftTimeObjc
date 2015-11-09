//
//  RandomNumber.h
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/8/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomNumber : NSObject

+ (NSInteger)getRandomNumber;
+ (NSInteger)getRandomNumber_upperBound:(NSInteger)upperBound;
+ (NSInteger)getRandomNumberBetween:(NSInteger)from to:(NSInteger)to;

@end
