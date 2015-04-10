//
//  MixiSampleClass.m
//  FirstExample
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

#import "MixiSampleClass.h"

static NSString *const constString = @"const";
static NSString *staticString =@"static";

@interface MixiSampleClass()
@property (nonatomic, assign) BOOL isEnable;
@property (nonatomic, assign) SampleType sampleType;

@end

@implementation MixiSampleClass
-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType{
    self = [super init];
    if(self){
        _name = name;
        _isEnable = YES;
        _sampleType = sampleType;
    }
    return self;
}

+(NSString *)getStaticString
{
    return staticString;
}

//overrideする時に変数を定義しないといけない　( _name = name )
#pragma mark - Override
-(void)setName:(NSString *)name{
    _name = name;
}
@end
