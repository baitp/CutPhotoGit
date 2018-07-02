//
//  Arch.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/2.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Arch.h"

@implementation Arch

- (void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.sex forKey:@"sex"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.sex = [aDecoder decodeObjectForKey:@"sex"];
    }
    return self;
}

@end
