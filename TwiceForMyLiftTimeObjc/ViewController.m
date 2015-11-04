//
//  ViewController.m
//  TwiceForMyLiftTimeObjc
//
//  Created by Hao Zheng on 10/31/15.
//  Copyright © 2015 Planhola.com. All rights reserved.
//

#import "ViewController.h"

#import "Subsets.h"
#import "Permutation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Subsets *subsets = [Subsets new];
    NSArray *result = [subsets subsets_nums:@[@(1),@(2),@(3)]];
    NSLog(@"subsets: %@",result);
    
    Permutation *permutes = [Permutation new];
    NSArray *resultPermute = [permutes permute_nums:@[@(1),@(2),@(3)]];
    NSLog(@"Permutation: %@",resultPermute);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
