//
//  ZhunagtaiContext.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZhunagtaiContext.h"
#import "ZaoshangStae.h"

@implementation ZhunagtaiContext{
}

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)setHour:(NSInteger)hour{
    _hour = hour;
    [self show];
}

- (void)show{
    [ZaoshangStae show:self.hour];
}

@end
