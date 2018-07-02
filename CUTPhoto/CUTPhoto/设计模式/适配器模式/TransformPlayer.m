//
//  TransformPlayer.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "TransformPlayer.h"
#import "YaoMing.h"

@implementation TransformPlayer{
    YaoMing* ym_;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        ym_ = [[YaoMing alloc]init];
    }
    return self;
}

- (void)attack{
    [ym_ jingong];
}

- (void)defense{
    [ym_ fangshou];
}

@end
