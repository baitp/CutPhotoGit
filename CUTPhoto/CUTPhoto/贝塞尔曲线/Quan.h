//
//  Quan.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/8.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quan : CAShapeLayer<CAAnimationDelegate>

@property (nonatomic) CGPoint point;

- (instancetype)initWithFrame:(CGRect)frame targetPoint:(CGPoint)point;
- (Quan*)clone;
- (void)animation;

@end
