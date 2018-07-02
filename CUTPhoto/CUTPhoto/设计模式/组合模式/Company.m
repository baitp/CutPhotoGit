//
//  Company.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Company.h"

@implementation Company

- (instancetype)initWithName:(NSString*)name superName:(NSString*)superName
{
    self = [super init];
    if (self) {
        _name = name;
        _superName = superName;
        list_ = [NSMutableArray arrayWithCapacity:1];
    }
    return self;
}

- (void)addDepartment:(Company*)department{
    
}

- (void)removeDepartment:(Company*)department{
    
}

- (void)show{
    
}
@end
