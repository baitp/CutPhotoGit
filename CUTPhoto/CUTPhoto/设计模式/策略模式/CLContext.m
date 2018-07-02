//
//  CLContext.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "CLContext.h"

@implementation CLContext{
    Jiezhang* jz_;
}

- (void)setJiezhang:(Jiezhang*)jz{
    jz_ = jz;
}

- (void)setMoney:(NSInteger)money{
    jz_.money = money;
}

@end
