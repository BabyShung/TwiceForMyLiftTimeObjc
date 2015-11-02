//
//  StringHelper.h
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/1/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringHelper : NSObject

+ (NSString *)randomString;
+ (NSString *)randomString_fixedLength;
+ (NSString *)randomString_Length:(NSInteger)len;
+ (NSInteger)randomNumberWithUpperBound:(NSInteger)upperBound;

@end
