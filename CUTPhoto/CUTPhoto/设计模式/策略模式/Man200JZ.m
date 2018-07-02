//
//  Man200JZ.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Man200JZ.h"

@implementation Man200JZ

- (void)giveMoney{
    if (self.money >= 200) {
        NSLog(@"满200减20,请支付%ld元",self.money-20);
    }else{
        NSLog(@"未满200,请支付%ld元",self.money);
    }
}

@end
