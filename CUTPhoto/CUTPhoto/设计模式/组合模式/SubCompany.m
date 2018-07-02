//
//  SubCompany.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "SubCompany.h"

@implementation SubCompany{
    
}


- (void)addDepartment:(Company*)department{
    [list_ addObject:department];
    
}

- (void)removeDepartment:(Company*)department{
    for (Company* co in list_) {
        if ([department -> _name isEqualToString:co -> _name]) {
            [list_ removeObject:co];
            break;
        }
    }
}

- (void)show{
    NSLog(@"%@",_name);
    for (Company* co in list_) {
        [self foreach:co];
    }
}

- (void)foreach:(Company*)com{
    if (com->list_.count == 0) {
        NSLog(@"%@", com->_name);
        return;
    }else{
        NSLog(@"%@", com->_name);
        for (Company* comp in com->list_) {
            [self foreach:comp];
        }
        
    }
}

@end
