//
//  CaiwuBu.h
//  CUTPhoto
//
//  Created by 白天鹏 on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaiwuBu : NSObject
//现金付款、申请贷款、审核贷款、放款
- (void)xianjinPay;
- (BOOL)daiKuanPay:(NSInteger)money;

@end
