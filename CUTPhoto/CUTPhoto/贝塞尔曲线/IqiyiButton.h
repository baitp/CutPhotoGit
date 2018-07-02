//
//  IqiyiButton.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/13.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    Play,
    Pause,
} PlayStatus;

@interface IqiyiButton : UIButton<CAAnimationDelegate>

@property (nonatomic) PlayStatus status;

@end
