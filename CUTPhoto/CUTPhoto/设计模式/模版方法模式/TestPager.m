//
//  TestPager.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "TestPager.h"

@interface TestPager ()

- (NSString*)answer1;

@end

@implementation TestPager{
}

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        NSLog(@"以下是%@的答案:", name);
    }
    return self;
}

- (void)question1{
    NSLog(@"杨过的师傅是谁?");
    NSLog(@"A.郭靖");
    NSLog(@"B.小龙女");
    NSLog(@"C.杨康");
    NSLog(@"D.郭芙");
    NSLog(@"答案: %@", [self answer1]);
}

- (void)question2{
    NSLog(@"杨过的师傅是谁?");
    NSLog(@"A.郭靖");
    NSLog(@"B.小龙女");
    NSLog(@"C.杨康");
    NSLog(@"D.郭芙");
    NSLog(@"答案: %@", [self answer2]);
}

- (void)question3{
    NSLog(@"杨康的师傅是谁?");
    NSLog(@"A.郭靖父");
    NSLog(@"B.小龙女");
    NSLog(@"C.杨过");
    NSLog(@"D.未提到");
    NSLog(@"答案: %@", [self answer3]);
}

- (void)question4{
    NSLog(@"郭靖的师傅是谁?");
    NSLog(@"A.郭破路");
    NSLog(@"B.小龙女");
    NSLog(@"C.杨康");
    NSLog(@"D.江南七怪");
    NSLog(@"答案: %@", [self answer4]);
}

- (void)question5{
    NSLog(@"天龙八部谁最厉害?");
    NSLog(@"A.郭靖");
    NSLog(@"B.小龙女");
    NSLog(@"C.乔峰");
    NSLog(@"D.郭芙");
    NSLog(@"答案: %@", [self answer5]);
}

- (NSString*)answer1{
    return nil;
}
- (NSString*)answer2{
    return nil;
}
- (NSString*)answer3{
    return nil;
}
- (NSString*)answer4{
    return nil;
}
- (NSString*)answer5{
    return nil;
}

@end
