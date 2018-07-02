//
//  XiawuState.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "XiawuState.h"

@implementation XiawuState
+ (void)show:(NSInteger)hour{
    if (hour > 13 && hour < 18) {
        NSLog(@"下午工作,依然在状态");
    }else{
        [WanshangState show:hour];
    }
}
@end
