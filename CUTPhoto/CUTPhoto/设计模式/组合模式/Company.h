//
//  Company.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject{
    @protected NSString* _name;
    @protected NSString* _superName;
    @protected NSMutableArray* list_;
}

- (instancetype)initWithName:(NSString*)name superName:(NSString*)superName;

- (void)addDepartment:(Company*)department;
- (void)removeDepartment:(Company*)department;
- (void)show;

@end
