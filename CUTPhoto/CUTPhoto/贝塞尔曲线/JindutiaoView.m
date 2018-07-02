//
//  JindutiaoView.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/12.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "JindutiaoView.h"

@implementation JindutiaoView{
    CAShapeLayer* layer_;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        self.frame = frame;
        CAShapeLayer* layerBg = [[CAShapeLayer alloc]init];
        layerBg.lineWidth = 3;
        layerBg.strokeColor = [UIColor lightGrayColor].CGColor;
        layerBg.fillColor = [UIColor clearColor].CGColor;
        UIBezierPath* bgPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((frame.size.width-100)*0.5, 10, 100, 100)];
        layerBg.path= bgPath.CGPath;
        [self addSublayer:layerBg];
        
        layer_ = [[CAShapeLayer alloc]init];
        layer_.lineWidth = 3;
        layer_.strokeColor = [UIColor redColor].CGColor;
        layer_.fillColor = [UIColor clearColor].CGColor;
        UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((frame.size.width-100)*0.5, 10, 100, 100)];
        layer_.path = path.CGPath;
        [self addSublayer:layer_];
        
        layer_.strokeStart = 0;
        layer_.strokeEnd = 0;
        
        NSTimer* timer_ = [NSTimer timerWithTimeInterval:0.5 repeats:YES block:^(NSTimer * _Nonnull timer) {
            if (layer_.strokeEnd >= 1) {
                [timer invalidate];
                timer = nil;
            }else{
                layer_.strokeEnd += 0.1;
            }
        }];
        [[NSRunLoop currentRunLoop] addTimer:timer_ forMode:NSRunLoopCommonModes];
        
    }
    return self;
}

@end
