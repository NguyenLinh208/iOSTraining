//
//  TestQueue.h
//  BasicObjectiveC
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSMutableArray
-(id) dequeue;
-(void) enqueue:(id)obj;

@end
