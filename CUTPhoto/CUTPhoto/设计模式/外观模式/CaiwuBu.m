//
//  CaiwuBu.m
//  CUTPhoto
//
//  Created by 白天鹏 on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "CaiwuBu.h"

@implementation CaiwuBu

- (void)xianjinPay{
    NSLog(@"现金付款");
}

- (BOOL)daiKuanPay:(NSInteger)money{
    NSLog(@"申请贷款");
    BOOL success = [self shenheDaikuan:money];
    if (success) {
        [self fangKuang];
    }
    return success;
}

- (BOOL)shenheDaikuan:(NSInteger)money{
    NSLog(@"审核贷款");
    if (money > 10000) {
        NSLog(@"审核通过");
        return YES;
    }else{
        NSLog(@"审核未通过");
        return NO;
    }
}

- (void)fangKuang{
    NSLog(@"放款");
}

@end
