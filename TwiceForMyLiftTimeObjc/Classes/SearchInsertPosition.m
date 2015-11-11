//
//  SearchInsertPosition.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 11/10/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import "SearchInsertPosition.h"

@implementation SearchInsertPosition

- (NSInteger)searchInsert_nums:(NSArray *)nums target:(NSInteger)target
{
    if (!nums || nums.count == 0) {
        return -1;
    }
    NSInteger start = 0, end = nums.count - 1;
    
    while (start + 1 < end) {
        NSInteger mid = start + (end - start) / 2;
        NSInteger midValue = [nums[mid] integerValue];
        if (midValue == target) {
            return mid;
        } else if (midValue > target) {
            end = mid;
        } else {
            start = mid;
        }
    }
    
    if ([nums[start] integerValue] >= target) {
        return start;
    } else if ([nums[end] integerValue] >= target) {
        return end;
    } else {
        return end + 1;
    }
}


@end
