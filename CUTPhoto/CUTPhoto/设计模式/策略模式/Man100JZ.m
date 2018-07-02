//
//  Man100JZ.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Man100JZ.h"

@implementation Man100JZ

- (void)giveMoney{
    if (self.money >= 100) {
        NSLog(@"满100减10,请支付%ld元",self.money-10);
    }else{
        NSLog(@"未满100,请支付%ld元",self.money);
    }
}

@end
