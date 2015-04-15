//
//  TestStack.m
//  BasicObjectiveC
//
//  Created by グェン カン リン on 2015/04/13.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestStack.h"
@interface TestStack()
@property (nonatomic,strong) NSMutableArray *stack;
@end

@implementation TestStack


- (instancetype)init{
    if (self = [super init])
        _stack = [NSMutableArray array];
    
    return self;
}

-(void)push:(id)object{
        [_stack addObject:(object)];
}
-(id)pop{
    if (_stack.count)
    {
        id object = _stack[_stack.count-1];
        [_stack removeObject:(object)];
        return object;
    }
    else return nil;
}

-(NSInteger)size{
    return _stack.count;
}



@end
