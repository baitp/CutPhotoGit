//
//  Order.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Order.h"

@implementation Order

- (id<YuanxingProtocol>)colone{
    @throw [NSException exceptionWithName:@"wor" reason:@"不能直接调用父类" userInfo:nil];
    return nil;
}

- (void)print{
    NSLog(@"姓名:%@",self.name);
    NSLog(@"订单id:%@", self.orderId);
}

- (void)alter:(NSString*)nn{
    
}

@end
