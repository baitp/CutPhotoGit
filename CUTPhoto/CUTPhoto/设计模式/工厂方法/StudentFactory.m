//
//  StudentFactory.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "StudentFactory.h"
#import "Student.h"

@implementation StudentFactory

+ (Helper*)createHelper{
    return [Student new];
}

@end
