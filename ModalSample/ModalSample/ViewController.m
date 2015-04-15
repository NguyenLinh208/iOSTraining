//
//  ViewController.m
//  ModalSample
//
//  Created by グェン カン リン on 2015/04/14.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressModalButton:(id)sender {
    
    ModalViewController *modalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ModalViewController"];
    
    modalViewController.delegate = self;
    
    [self presentViewController:modalViewController animated:YES completion:nil];
}

- (void)didPressCloseButton:(ModalViewController *)controller
{
    [controller dismissViewControllerAnimated:YES completion:nil];
}


@end
