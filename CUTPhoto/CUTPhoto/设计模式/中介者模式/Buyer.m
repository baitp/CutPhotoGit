//
//  Buyer.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Buyer.h"

@implementation Buyer

- (void)sellHouse{
    NSLog(@"你是买家,不能卖房");
    
}

- (void)buyHouse{
    [[ZhongJZ share] buyHouse:self];
}

@end
