//
//  ZRZongjingli.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZRZongjingli.h"

@implementation ZRZongjingli

- (void)handleAction:(ZRRequest*)request{
    if (request.level <= 3) {
        NSLog(@"%@总经理能够批准", _name);
    }else{
        [_upper handleAction:request];
    }
}

@end
