//
//  WorkerFactory.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "WorkerFactory.h"
#import "Worker.h"

@implementation WorkerFactory

+ (Helper*)createHelper{
    return [Worker new];
}

@end
