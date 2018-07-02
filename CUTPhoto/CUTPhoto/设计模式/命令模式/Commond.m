//
//  Commond.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Commond.h"

@interface Commond()



@end

@implementation Commond

- (instancetype)init
{
    self = [super init];
    if (self) {
        _exe = [CommondExe new];
    }
    return self;
}

- (void)exe{
    if (self.count != 0) {
        [self exeShaoKao];
    }else{
        NSLog(@"请说明您要烤几份");
    }
}
- (void)cancel{
    
}

- (void)exeShaoKao{
    
}

@end
