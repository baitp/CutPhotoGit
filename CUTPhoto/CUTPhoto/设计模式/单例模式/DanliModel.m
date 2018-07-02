//
//  DanliModel.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "DanliModel.h"

@implementation DanliModel

//在对象创建的时候，无论是alloc还是new，都会调用到 allocWithZone方法

+ (DanliModel*)getModel{
    static DanliModel* mm = nil;
    static dispatch_once_t onceToken;
    //可以用NSLock和@synchronized实现线程安全,但是dispatch_once性能最好,是其他的方法的好几倍
    dispatch_once(&onceToken, ^{//线程安全
        if (mm == nil) {
            mm = [[DanliModel alloc]init];
        }
    });
    return mm;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
//        @throw [NSException exceptionWithName:@"notAllowCallInit" reason:@"单例,不允许初始化" userInfo:nil];
    }
    return self;
}

@end
