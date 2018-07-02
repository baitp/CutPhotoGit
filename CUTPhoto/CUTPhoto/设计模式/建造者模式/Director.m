//
//  Director.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Director.h"


@implementation Director

+ (Person*)director:(Builder*)builder{
    [builder builderPerson];
    return [builder getPerson];
}

@end
