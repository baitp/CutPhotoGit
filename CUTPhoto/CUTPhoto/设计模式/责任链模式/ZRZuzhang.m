//
//  ZRZuzhang.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZRZuzhang.h"

@implementation ZRZuzhang

- (void)handleAction:(ZRRequest*)request{
    if (request.level == 1) {
        NSLog(@"%@组长能够批准", _name);
    }else{
        [_upper handleAction:request];
    }
}

@end
