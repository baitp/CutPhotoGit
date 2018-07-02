//
//  GameRole.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "GameRole.h"

@implementation GameRole{
    NSInteger HP_;
    NSInteger MP_;
    NSInteger level_;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        HP_ = 100;
        MP_ = 100;
        level_ = 100;
    }
    return self;
}

- (Beiwanglu*)createBeiwanglu{
    return [[Beiwanglu alloc]init];
}

- (Beiwanglu*)saveState{
    Beiwanglu* bwl = [self createBeiwanglu];
    [bwl save:HP_ mp:MP_ level:level_];
    return bwl;
}

- (void)reset:(Beiwanglu*)bwl{
    HP_ = bwl.hp;
    MP_ = bwl.mp;
    level_ = bwl.level;
}

- (void)fight{
    HP_ = 0;
    MP_ = 0;
    level_ = 99;
    NSLog(@"角色死亡,掉了一级");
}

- (void)show{
    NSLog(@"当前等级:%ld, 血量:%ld, 蓝:%ld", level_, HP_, MP_);
}
@end
