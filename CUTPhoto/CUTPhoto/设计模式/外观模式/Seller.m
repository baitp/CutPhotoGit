//
//  Seller.m
//  CUTPhoto
//
//  Created by 白天鹏 on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Seller.h"
#import "CaiwuBu.h"
#import "ShouhouBu.h"
#import "XiaoshouBu.h"

@implementation Seller

- (void)quankuanPay{
    XiaoshouBu* xs = [[XiaoshouBu alloc]init];
    [xs chelianTiaoPei];
    [xs Peijian];
    [xs zengpin];
    CaiwuBu* cw = [[CaiwuBu alloc]init];
    [cw xianjinPay];
    ShouhouBu* sh = [[ShouhouBu alloc]init];
    [sh tiemo];
    [sh zhuangpeiJian];
    [sh xiche];
    [sh shangpai];
    [sh weixiu];
    [sh baoyang];
}

- (void)daikuanPay:(NSInteger)money{
    XiaoshouBu* xs = [[XiaoshouBu alloc]init];
    [xs chelianTiaoPei];
    [xs Peijian];
    [xs zengpin];
    CaiwuBu* cw = [[CaiwuBu alloc]init];
    BOOL success = [cw daiKuanPay:money];
    if (success) {
        ShouhouBu* sh = [[ShouhouBu alloc]init];
        [sh tiemo];
        [sh zhuangpeiJian];
        [sh xiche];
        [sh shangpai];
        [sh weixiu];
        [sh baoyang];
    }
}

@end
