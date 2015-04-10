//
//  ModalViewController.h
//  FirstExample
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate;

@interface ModalViewController : UIViewController
@property (nonatomic, strong) NSString *message;
@property (nonatomic, weak) id<ModalViewControllerDelegate>delegate;

@end
@protocol ModalViewControllerDelegate <NSObject>

-(void)closeButtonTapped:(ModalViewController *) controller;

@end