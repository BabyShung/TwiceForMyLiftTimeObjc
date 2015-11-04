//
//  Permutation.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/3/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import "Permutation.h"

@implementation Permutation

- (NSArray *)permute_nums:(NSArray *)nums
{
    NSMutableArray *result = [NSMutableArray array];
    if (!nums || nums.count == 0) {
        return result;
    }
    
    NSMutableArray *list = [NSMutableArray array];
    [self permuteHelper_result:result
                          list:list
                          nums:nums];
    return result;
}

- (void)permuteHelper_result:(NSMutableArray *)result
                        list:(NSMutableArray *)list
                        nums:(NSArray *)nums
{
    if (list.count == nums.count) {
        [result addObject:[NSArray arrayWithArray:list]];
        return;
    }
    
    for (NSInteger i = 0; i < nums.count; i++) {
        if ([list containsObject:nums[i]]) {
            continue;
        }
        [list addObject:nums[i]];
        [self permuteHelper_result:result
                              list:list
                              nums:nums];
        [list removeLastObject];
    }
}

@end
