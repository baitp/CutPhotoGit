//
//  Builder.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Builder.h"

@implementation Builder{
    
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        p_ = [[Person alloc]init];
    }
    return self;
}

- (void)builderPerson{

}

- (Person*)getPerson{
    return p_;
}

@end
