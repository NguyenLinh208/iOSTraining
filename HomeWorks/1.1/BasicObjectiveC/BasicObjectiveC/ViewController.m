//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //課題１
    NSArray *domain_1 = @[@{@"domain":@"mixi.jp"},
                          @{@"entry":
                                @[@"list_voice.pl",@"list_diary.pl",@"list_mymall_item.pl"]}];
    
    NSArray *domain_2 = @[@{@"domain":@"mmail.jp"},
                          @{@"entry":
                                @[
                                    @{@"path":@"add_diary.pl"},
                                       @{@"query":
                                                @{@"tag_id":@"7"}}]}];
                            
    NSArray *domain_3 = @{@"domain":@"itune.apple.com"};
    
    NSLog (@"%@",domain_1);
    NSLog (@"%@",domain_2);
    NSLog (@"%@",domain_3);
    
    //課題２-queue
    NSLog(@"====================");
    TestQueue *queue = [[TestQueue alloc]init];
    [queue push:(@"1")];
    [queue push:(@"2")];
    NSLog(@"%ld", [queue size]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
    NSLog(@"%@", [queue pop]);
    
    //課題２-stack
    NSLog(@"=========");
    TestStack *stack = [[TestStack alloc]init];
    [stack push:(@"3")];
    [stack push:(@"4")];
    [stack push:(@"5")];
    NSLog(@"%ld",[stack size]);
    NSLog(@"%@",[stack pop]);
    NSLog(@"%@",[stack pop]);
    NSLog(@"%@",[stack pop]);
    NSLog(@"%@",[stack pop]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
