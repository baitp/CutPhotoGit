//
//  ZhongJZ.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
@class KeHu;


@interface ZhongJZ : NSObject

- (void)sellHouse:(KeHu*)kh;
- (void)buyHouse:(KeHu*)kh;

+ (ZhongJZ*)share;



@end
