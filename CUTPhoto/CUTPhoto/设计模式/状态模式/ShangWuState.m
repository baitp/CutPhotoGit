//
//  ShangWuState.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ShangWuState.h"


@implementation ShangWuState
+ (void)show:(NSInteger)hour{
    if (hour > 8 && hour < 12) {
        NSLog(@"上午工作,干劲十足");
    }else{
        [ZhongwuState show:hour];
    }
}
@end
