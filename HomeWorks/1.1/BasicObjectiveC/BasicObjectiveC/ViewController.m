//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // TODO ここに課題を書き進めていってください
    NSArray *domain_1 = @[@{@"domain":@"mixi.jp"},
                          @{@"entry":@[@"list_voice.pl",@"list_diary.pl",@"list_mymall_item.pl"]}];
    
    NSArray *domain_2 = @[@{@"domain":@"mmail.jp"},
                          @{@"entry":@[@{@"path":@"add_diary.pl"},
                                       @{@"query":@{@"tag_id":@"7"}}]}];
                            
    NSArray *domain_3 = @{@"domain":@"itune.apple.com"};
    
    NSLog (@"%@",domain_1);
    NSLog (@"%@",domain_2);
    NSLog (@"%@",domain_3);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
