//
//  SuanFaFactory.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "SuanFaFactory.h"
#import "Jia.h"
#import "Jian.h"
#import "Chu.h"
#import "Cheng.h"


@implementation SuanFaFactory

+ (id<SuanFaProtocol>)operation:(NSString*)op{
    id<SuanFaProtocol> opa = nil;
    if ([op isEqualToString:@"+"]) {
        opa = [Jia new];
    }else if ([op isEqualToString:@"-"]){
        opa = [Jian new];
    }else if ([op isEqualToString:@"*"]){
        opa = [Cheng new];
    }else if ([op isEqualToString:@"/"]){
        opa = [Chu new];
    }
    return opa;
}

@end
