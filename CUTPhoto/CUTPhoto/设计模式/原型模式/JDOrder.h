//
//  JDOrder.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Order.h"

@interface JDOrder : Order

+ (JDOrder*)make:(NSString*)name orderId:(NSString*)orderId post:(NSString*)post;

@end
