//
//  TMOrder.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "TMOrder.h"

@interface TMOrder()

@property (nonatomic, strong) NSString* channel;

@end

@implementation TMOrder

+ (TMOrder*)make:(NSString*)name orderId:(NSString*)orderId channel:(NSString*)channel{
    TMOrder* o = [TMOrder new];
    o.name = name;
    o.orderId = orderId;
    o.channel = channel;
    return o;
}

- (id<YuanxingProtocol>)colone{
    return [TMOrder make:self.name orderId:self.orderId channel:self.channel];
}

- (void)print{
    [super print];
    NSLog(@"渠道:%@", self.channel);
}

- (void)alter:(NSString*)nn{
    self.channel = nn;
}
@end
