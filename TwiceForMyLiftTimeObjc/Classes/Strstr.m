//
//  Strstr.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/1/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import "Strstr.h"

@implementation Strstr

- (NSInteger)strstr_source:(NSString *)source
                    target:(NSString *)target
{
    //check special cases: nil, MaxMin
    if (!source || !target || target.length > source.length) {
        return -1;
    }
    for (NSInteger i = 0; i < source.length - target.length + 1; i++) {
        NSInteger j = 0;
        for (j = 0; j < target.length; j++) {
            if ([source characterAtIndex:i + j] != [target characterAtIndex:j]) {
                break;
            }
        }
        if (j == target.length) {
            return i;
        }
    }
    return -1;
}

@end
