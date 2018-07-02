//
//  CommondExe.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "CommondExe.h"

@implementation CommondExe

- (void)exe:(NSString*)name count:(NSInteger)count{
    NSLog(@"我在烤%ld份%@",count, name);
}
- (void)cancel:(NSString*)name count:(NSInteger)count{
    NSLog(@"%ld份%@不烤了", count, name);
}


@end
