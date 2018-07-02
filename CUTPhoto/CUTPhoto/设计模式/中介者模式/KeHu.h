//
//  KeHu.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZhongJZ.h"

@interface KeHu : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic) NSInteger ownMoney;
@property (nonatomic) NSInteger housePrice;

- (void)sellHouse;
- (void)buyHouse;

@end
