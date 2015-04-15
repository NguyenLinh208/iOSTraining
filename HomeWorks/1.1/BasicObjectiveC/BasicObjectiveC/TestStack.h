//
//  TestStack.h
//  BasicObjectiveC
//
//  Created by グェン カン リン on 2015/04/13.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestStack : NSObject
-(void)push:(id)object;
-(id)pop;
-(NSInteger)size;
@end
