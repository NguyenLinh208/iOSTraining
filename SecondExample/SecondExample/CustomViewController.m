//
//  CustomViewController.m
//  SecondExample
//
//  Created by グェン カン リン on 2015/04/13.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import "CustomViewController.h"
#import "ModalViewController.h"

@interface CustomViewController ()
@property (weak, nonatomic) IBOutlet UIButton *pressOnButton;

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.text = @"TEST";
    
}
//
//-(IBAction)buttonTapped:(id)sender{
//    self.label.text = @"Yes";
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressOnButton:(id)send
{
    
    ModalViewController *showModalView = [[ModalViewController alloc]init];
    [self presentViewController:showModalView
          animated:YES
          completion:^{ NSLog(@"View Modal");}];
};

@end
