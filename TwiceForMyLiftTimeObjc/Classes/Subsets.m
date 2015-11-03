//
//  Subsets.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/2/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import "Subsets.h"

@implementation Subsets

- (NSArray *)subsets_nums:(NSArray *)nums
{
    NSMutableArray *result = [NSMutableArray array];
    if (!nums || nums.count == 0) {
        return result;
    }
    NSMutableArray *list = [NSMutableArray array];
    [list sortedArrayUsingSelector:@selector(compare:)];
    [self subsetsHelper:result
                   list:list
                    num:nums
                    pos:0];
    return result;
}

- (void)subsetsHelper:(NSMutableArray *)result
                 list:(NSMutableArray *)list
                  num:(NSArray *)nums
                  pos:(NSInteger)pos
{
    [result addObject:[NSArray arrayWithArray:list]];
    for (NSInteger i = pos; i < nums.count; i++) {
        [list addObject:nums[i]];
        [self subsetsHelper:result
                       list:list
                        num:nums
                        pos:i + 1];
        [list removeLastObject];
    }
}

@end
