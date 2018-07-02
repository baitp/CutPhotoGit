//
//  GuardPlayer.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "GuardPlayer.h"

@implementation GuardPlayer

- (void)attack{
    NSLog(@"%@协助进攻",self.name);
}

- (void)defense{
    NSLog(@"%@防守",self.name);
}

@end
