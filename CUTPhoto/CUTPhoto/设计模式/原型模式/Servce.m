//
//  Servce.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Servce.h"

@implementation Servce{
    NSMutableArray* orders_;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        orders_ = [NSMutableArray array];
    }
    return self;
}

- (void)addOrder:(Order*)order{
    [orders_ addObject:order.colone];
}
- (void)print{
    for (Order* o in orders_) {
        [o print];
    }
}

@end

