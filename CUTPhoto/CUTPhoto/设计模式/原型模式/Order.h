//
//  Order.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YuanxingProtocol.h"

@interface Order : NSObject<YuanxingProtocol>

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* orderId;

- (void)print;
- (void)alter:(NSString*)nn;

@end
