//
//  ModalViewController.h
//  ModalSample
//
//  Created by グェン カン リン on 2015/04/14.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ModalViewControllerDelegate;

@interface ModalViewController : UIViewController
@property (nonatomic,weak) id<ModalViewControllerDelegate>delegate;
-(IBAction)pressCloseButton:(id)sender;
@end

@protocol ModalViewControllerDelegate <NSObject>

-(void)didPressCloseButton:(ModalViewController *)controller;

@end