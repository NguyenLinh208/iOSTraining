//
//  ModalViewController.m
//  FirstExample
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _label.text = _message;
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)closeButtonTapped:(UIButton *)sender {

    if ([_delegate respondsToSelector:@selector(closeButtonTapped:)]){
        [_delegate closeButtonTapped:self];
        
    }
//    [self dismissViewControllerAnimated:YES completion:^{NSLog(@"closed");}];
}

@end
