//
//  ZSPerson.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZSPerson.h"

@implementation ZSPerson{
    NSString* name_;
}

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        name_ = name;
        NSLog(@"我叫%@",name);
    }
    return self;
}

- (void)setAge:(NSString *)age{
    _age = age;
    NSLog(@"我叫%@今年%@岁", name_, age);
}

- (void)show{
    NSLog(@"我今天穿了很多的衣服");
}

@end
