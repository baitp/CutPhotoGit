//
//  FlowerFactory.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "FlowerFactory.h"

@implementation FlowerFactory{
    NSMutableDictionary* dic_;
}

- (Flower*)getFlower:(ColorType)type{
    if (dic_ == nil) {
        dic_ = [NSMutableDictionary dictionary];
    }
    
    Flower* flower = [dic_ objectForKey:[NSString stringWithFormat:@"%ld", type]];
    if (flower == nil) {
        flower = [[Flower alloc]init];
        switch (type) {
            case kRed:
                flower.color = @"红色";
                flower.name = @"小红花";
                break;
            case kYellow:
                flower.color = @"黄色";
                flower.name = @"小黄花";
                break;
            case kWhite:
                flower.color = @"白色";
                flower.name = @"小白花";
                break;
        }
        [dic_ setValue:flower forKey:[NSString stringWithFormat:@"%ld", type]];
    }
    return flower;
}

@end
