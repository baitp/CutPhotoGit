//
//  KaoJixin.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "KaoJixin.h"

@implementation KaoJixin
- (void)cancel{
    [_exe cancel:@"烤鸡心" count:self.count];
}

- (void)exeShaoKao{
    [_exe exe:@"烤鸡心" count:self.count];
}
@end
