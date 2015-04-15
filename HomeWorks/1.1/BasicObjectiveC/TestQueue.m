//
//  TestQueue.m
//  BasicObjectiveC
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 武田 祐一. All rights reserved.
//

#import "TestQueue.h"
@interface TestQueue()
@property (nonatomic, strong) NSMutableArray *queue;
@end

@implementation TestQueue

- (instancetype)init{
    if (self = [super init])
        _queue = [NSMutableArray array];
        
    return self;
}
-(void)push:(id)object{
    [_queue addObject:object];
}

-(id)pop{
    if (_queue.count){
        id object = _queue[0];
        [_queue removeObject:object];
        return object;
    }
    
    else return nil;
}
-(NSInteger)size {
    return _queue.count;
}

@end


