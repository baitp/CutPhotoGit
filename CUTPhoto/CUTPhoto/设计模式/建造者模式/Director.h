//
//  Director.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"
#import "Builder1.h"
#import "Builder2.h"

@interface Director : NSObject

+ (Person*)director:(Builder*)builder;

@end
