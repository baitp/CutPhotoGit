//
//  Phone.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/24.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "HYGame.h"
#import "WZRYGame.h"

@interface Phone : NSObject

@property (nonatomic, strong) NSString* type;
@property (nonatomic, strong) Game* game;

- (void)playGame;

@end
