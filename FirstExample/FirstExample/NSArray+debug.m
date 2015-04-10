//
//  NSArray+debug.m
//  FirstExample
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import "NSArray+debug.h"

@implementation NSArray (debug)

- (void)printLog{
    for ( NSString *item in self){
        NSLog(@"%@", item);
    }
}
@end
