//
//  MixiSampleClass.h
//  FirstExample
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
// h は外を見せる必要があるものだけ載せる

#import <Foundation/Foundation.h>


//列挙型
//APIの新着表示したいとき SampleTypeNew のように）
//見やすく、分かり易い
//define を使わないに typedef
//defineで書くものがチェックされない

typedef NS_ENUM(NSInteger, SampleType) {
    SampleTypeHoge = 0, //SameTypeは列挙の名前
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSampleClass : NSObject

@property (nonatomic, strong) NSString *name;
//インスタンス化した時使う
//strong :メモリ管理、自分のものをstrong
//weak: 他のものを使う時に設定
//assign = weak
//retain = strong
//property を作るとset と get自動的に作られる


#pragma メモを書く
-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType;
+(NSString *) getStaticString;

@end
