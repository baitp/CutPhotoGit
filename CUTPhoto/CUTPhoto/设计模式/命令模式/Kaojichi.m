//
//  Kaojichi.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Kaojichi.h"

@implementation Kaojichi
- (void)cancel{
    [_exe cancel:@"烤鸡翅" count:self.count];
}

- (void)exeShaoKao{
    [_exe exe:@"烤鸡翅" count:self.count];
}
@end
