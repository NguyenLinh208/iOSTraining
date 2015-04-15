//
//  TestViewController.m
//  FirstExample
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import "TestViewController.h"
#import "ModalViewController.h"
#import "XibViewController.h"

@interface TestViewController ()<ModalViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;
// nonatomic 非同期処理
// * pointer
// những giá trị cố định ( vf: integer, bool thì ko cần *

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segement;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_button addTarget:self
                action:@selector(buttonTapped:)
      forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)buttonTapped:(id)sender {
    [_button setTintColor:[UIColor greenColor]];
    
//    XibViewController *xibViewController = [[XibViewController alloc]initWithNibName:@"XibViewController"
//                                                                              bundle:nil];
//    [self presentViewController:xibViewController
//                       animated:YES completion:nil];
    
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    ModalViewController *modalViewController = [storyBoard instantiateViewControllerWithIdentifier:@"ModalViewController"];
    
    modalViewController.message = _textField.text;
    modalViewController.delegate = self;
    
    [self presentViewController:modalViewController
                       animated:YES
                     completion:^{ NSLog(@"View Modal");}];
    
}

-(void)closeButtonTapped:(ModalViewController *)controller
{
    [controller dismissViewControllerAnimated:YES completion:nil ];
}

@end
