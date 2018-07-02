//
//  ZhongwuState.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZhongwuState.h"


@implementation ZhongwuState
+ (void)show:(NSInteger)hour{
    if (hour >= 12 && hour <= 13) {
        NSLog(@"吃午饭,午休");
    }else{
        [XiawuState show:hour];
    }
}
@end
