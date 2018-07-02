//
//  TBOrder.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Order.h"

@interface TBOrder : Order

+ (TBOrder*)make:(NSString*)name orderId:(NSString*)orderId price:(NSInteger)price;

@end
