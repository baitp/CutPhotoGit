//
//  ZhongJZ.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZhongJZ.h"
#import "KeHu.h"

@implementation ZhongJZ{
    NSMutableArray* sellerList_;
    NSMutableArray* buyerList_;
}

+ (ZhongJZ*)share{
    static ZhongJZ* zjz = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (zjz == nil) {
            zjz = [[ZhongJZ alloc]init];
        }
    });
    return zjz;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        sellerList_ = [NSMutableArray arrayWithCapacity:1];
        buyerList_ = [NSMutableArray arrayWithCapacity:1];
    }
    return self;
}

- (void)sellHouse:(KeHu*)kh{
    BOOL have = NO;
    for (NSInteger i = 0; i < sellerList_.count; i++) {
        KeHu* hh = sellerList_[i];
        if ([hh.name isEqualToString:kh.name] && kh.housePrice == hh.housePrice) {
            have = YES;
            break;
        }
    }
    if (!have) {
        [sellerList_ addObject:kh];
    }
    
    if (buyerList_.count == 0) {
        NSLog(@"暂时没有买家,我们正在努力的联系");
    }else{
        NSMutableArray* arr = [NSMutableArray arrayWithCapacity:1];
        for (NSInteger i = 0; i < buyerList_.count; i++) {
            KeHu* ckh = [buyerList_ objectAtIndex:i];
            if (ckh.ownMoney >= kh.housePrice) {
                [arr addObject:ckh];
            }
        }
        if (arr.count == 0) {
            NSLog(@"有买家,但是没有人能支付您房子价钱");
        }else{
            NSMutableArray* list = [self buyerArraySort:arr];
            KeHu* kkhh = [list lastObject];
            NSLog(@"已为您找到出价最高的买家%@,出价:%ld", kkhh.name, kkhh.ownMoney);
        }
    }
    
}
- (void)buyHouse:(KeHu*)kh{
    BOOL have = NO;
    for (NSInteger i = 0; i < buyerList_.count; i++) {
        KeHu* hh = buyerList_[i];
        if ([hh.name isEqualToString:kh.name] && kh.ownMoney == hh.ownMoney) {
            have = YES;
            break;
        }
    }
    if (!have) {
        [buyerList_ addObject:kh];
    }
    
    if (sellerList_.count == 0) {
        NSLog(@"暂时没有卖家,我们正在努力的联系");
    }else{
        NSMutableArray* arr = [NSMutableArray arrayWithCapacity:1];
        for (NSInteger i = 0; i < sellerList_.count; i++) {
            KeHu* ckh = [sellerList_ objectAtIndex:i];
            if (ckh.housePrice <= kh.ownMoney) {
                [arr addObject:ckh];
            }
        }
        if (arr.count == 0) {
            NSLog(@"有卖家,但是没有您能买的起的");
        }else{
            NSMutableArray* list = [self sellerArraySort:arr];
            KeHu* kkhh = [list firstObject];
            NSLog(@"已为您找到房价最低的卖家%@,售价:%ld", kkhh.name, kkhh.housePrice);
        }
    }
}

- (NSMutableArray*)buyerArraySort:(NSMutableArray*)arr{
    for (NSInteger i = 0; i < arr.count; i++) {
        for (NSInteger j = i+1; j < arr.count; j++) {
            KeHu* khi = arr[i];
            KeHu* khj = arr[j];
            if (khi.ownMoney > khj.ownMoney) {
                KeHu* temp = khi;
                khi = khj;
                khj = temp;
            }
        }
    }
    return arr;
}

- (NSMutableArray*)sellerArraySort:(NSMutableArray*)arr{
    for (NSInteger i = 0; i < arr.count; i++) {
        for (NSInteger j = i+1; j < arr.count; j++) {
            KeHu* khi = arr[i];
            KeHu* khj = arr[j];
            if (khi.housePrice > khj.housePrice) {
                KeHu* temp = khi;
                khi = khj;
                khj = temp;
            }
        }
    }
    return arr;
}

@end
