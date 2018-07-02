//
//  TBOrder.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "TBOrder.h"

@interface TBOrder()

@property (nonatomic) NSInteger price;;

@end

@implementation TBOrder

+ (TBOrder*)make:(NSString*)name orderId:(NSString*)orderId price:(NSInteger)price{
    TBOrder* o = [TBOrder new];
    o.name = name;
    o.orderId = orderId;
    o.price = price;
    return o;
}

- (id<YuanxingProtocol>)colone{
    return [TBOrder make:self.name orderId:self.orderId price:self.price];
}

- (void)print{
    [super print];
    NSLog(@"价格:%ld", self.price);
}

- (void)alter:(NSString*)nn{
    self.price = [nn integerValue];
}

@end
