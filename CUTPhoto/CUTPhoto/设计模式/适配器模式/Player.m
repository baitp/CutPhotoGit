//
//  Player.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void)attack{
    @throw [NSException exceptionWithName:@"nono" reason:@"不能直接调用父类" userInfo:nil];
}

- (void)defense{
    @throw [NSException exceptionWithName:@"nono" reason:@"不能直接调用父类" userInfo:nil];
}

@end
