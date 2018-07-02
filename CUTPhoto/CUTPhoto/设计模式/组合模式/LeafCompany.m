//
//  LeafCompany.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "LeafCompany.h"

@implementation LeafCompany

- (void)addDepartment:(Company*)department{
    NSLog(@"%@没有子部门了", _name);
}

- (void)removeDepartment:(Company*)department{
    NSLog(@"%@的%@不能删除",_superName, _name);
}

- (void)show{
    NSLog(@"这是%@下的%@", _superName, _name);
}

@end
