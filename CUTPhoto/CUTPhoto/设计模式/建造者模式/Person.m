//
//  Person.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "Person.h"

@implementation Person{
    NSString* hat_;
    NSString* lap_;
    NSString* pants_;
    NSString* shoes_;
}

- (void)wearHat:(NSString*)hat{
    hat_ = hat;
}

- (void)putOnLap:(NSString*)lap{
    lap_ = lap;
}

- (void)putOnPants:(NSString*)pants{
    pants_ = pants;
}

- (void)putOnShoes:(NSString*)shoes{
    shoes_ = shoes;
}


- (void)show{
    NSLog(@"打扮成这样:头上戴着%@,上身穿着:%@,下身穿着:%@,脚上穿着:%@", hat_, lap_, pants_, shoes_);
}

@end
