//
//  Zhuangshi.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Zhuangshi.h"

@implementation Zhuangshi

- (void)operation:(Component*)com{
    com_ = com;
}

- (void)show{
    [com_ show];
}

@end
