//
//  KaoRouchuan.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "KaoRouchuan.h"

@implementation KaoRouchuan

- (void)cancel{
    [_exe cancel:@"烤肉串" count:self.count];
}

- (void)exeShaoKao{
    [_exe exe:@"烤肉串" count:self.count];
}

@end
