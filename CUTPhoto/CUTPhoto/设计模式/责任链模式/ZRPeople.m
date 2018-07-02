//
//  ZRPeople.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "ZRPeople.h"

@implementation ZRPeople

- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)setUpper:(ZRPeople*)upper{
    _upper = upper;
}

- (void)handleAction:(ZRRequest*)request{
    
}

@end
