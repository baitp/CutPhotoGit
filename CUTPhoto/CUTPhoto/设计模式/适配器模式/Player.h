//
//  Player.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, strong) NSString* name;

- (void)attack;
- (void)defense;

@end
