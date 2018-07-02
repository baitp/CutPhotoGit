//
//  Servce.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Order.h"

@interface Servce : NSObject

- (void)addOrder:(Order*)order;
- (void)print;

@end
