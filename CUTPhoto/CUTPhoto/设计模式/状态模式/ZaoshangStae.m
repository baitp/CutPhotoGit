//
//  ZaoshangStae.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZaoshangStae.h"


@implementation ZaoshangStae
+ (void)show:(NSInteger)hour{
    if (hour < 8) {
        NSLog(@"起床吃早饭");
    }else{
        [ShangWuState show:hour];
    }
}
@end
