//
//  CommondReciver.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "CommondReciver.h"
#import "Commond.h"
#import "Kaojichi.h"
#import "KaoJixin.h"
#import "KaoRouchuan.h"

@implementation CommondReciver{
    NSMutableArray* list_;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        list_ = [NSMutableArray arrayWithCapacity:1];
    }
    return self;
}

- (void)kao:(NSString*)name count:(NSInteger)count{
    NSDictionary* dic = @{@"name": name, @"count": @(count)};
    [list_ addObject:dic];
}

- (void)bukao:(NSString*)name{
    BOOL have = NO;
    for (NSDictionary* dic in list_) {
        NSString* nn = [dic objectForKey:@"name"];
        if ([nn containsString:name]) {
            [list_ removeObject:dic];
            NSLog(@"%@取消烧烤了",name);
            have = YES;
            break;
        }
    }
    if (!have) {
        NSLog(@"%@不能取消",name);
    }
}

- (void)exe{
    for (NSDictionary* dic in list_) {
        NSString* nn = [dic objectForKey:@"name"];
        NSInteger count = [[dic objectForKey:@"count"] integerValue];
        Commond* cn = nil;
        if ([nn containsString:@"肉串"]) {
            cn = [[KaoRouchuan alloc]init];
        }else if ([nn containsString:@"鸡翅"]){
            cn = [[Kaojichi alloc]init];
        }else if ([nn containsString:@"鸡心"]){
            cn = [[KaoJixin alloc]init];
        }else{
            NSLog(@"%@烤不了",nn);
            continue;
        }
        cn.count = count;
        [cn exe];
    }
    [list_ removeAllObjects];
}

@end
