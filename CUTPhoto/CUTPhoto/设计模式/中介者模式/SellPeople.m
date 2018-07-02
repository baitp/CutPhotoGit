//
//  SellPeople.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "SellPeople.h"

@implementation SellPeople

- (void)sellHouse{
    [[ZhongJZ share] sellHouse:self];
}

- (void)buyHouse{
    NSLog(@"你是卖家,不能买房");
}


@end
