//
//  Builder.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Builder : NSObject{
    Person* p_;
}

- (void)builderPerson;
- (Person*)getPerson;

@end
