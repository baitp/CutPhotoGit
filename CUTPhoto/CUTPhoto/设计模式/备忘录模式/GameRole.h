//
//  GameRole.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beiwanglu.h"

@interface GameRole : NSObject

- (void)fight;

- (Beiwanglu*)saveState;

- (void)reset:(Beiwanglu*)bwl;

- (void)show;

@end
