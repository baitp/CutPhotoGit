//
//  Chu.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Chu.h"

@implementation Chu
@synthesize b;
@synthesize a;

- (NSInteger)operation {
    if (b == 0) {
        @throw [NSException exceptionWithName:@"error" reason:@"被除数不能为零" userInfo:nil];
    }
    return a/b;
}
@end
