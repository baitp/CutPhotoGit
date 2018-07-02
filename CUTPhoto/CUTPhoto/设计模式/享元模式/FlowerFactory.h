//
//  FlowerFactory.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flower.h"

typedef enum : NSUInteger {
    kRed,
    kYellow,
    kWhite,
} ColorType;

@interface FlowerFactory : NSObject

- (Flower*)getFlower:(ColorType)type;

@end
