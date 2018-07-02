//
//  RFactory.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "RFactory.h"

@implementation RFactory

+ (Helper*)createHelper{
    @throw [NSException exceptionWithName:@"worng" reason:@"不能直接调用父类方法" userInfo:nil];
    return nil;
}

@end
