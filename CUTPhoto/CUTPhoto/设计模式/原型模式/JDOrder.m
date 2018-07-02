//
//  JDOrder.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "JDOrder.h"

@interface JDOrder()

@property (nonatomic, strong) NSString* post;

@end

@implementation JDOrder
+ (JDOrder*)make:(NSString*)name orderId:(NSString*)orderId post:(NSString*)post{
    JDOrder* o = [JDOrder new];
    o.name = name;
    o.orderId = orderId;
    o.post = post;
    return o;
}
- (id<YuanxingProtocol>)colone{
    return [JDOrder make:self.name orderId:self.orderId post:self.post];
}

- (void)print{
    [super print];
    NSLog(@"快递:%@", self.post);
}

- (void)alter:(NSString*)nn{
    self.post = nn;
}

@end
