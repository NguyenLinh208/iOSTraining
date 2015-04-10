//
//  ViewController.m
//  FirstExample
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"
#import "NSArray+debug.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Test *test = [[Test  alloc] init];
    [test firstName:@"nguyen" lastName:@"khanh linh"];
    
    NSArray *items = @[@"aaa", @"bb", @"jhfds"];
    [items printLog];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
