//
//  UIView+YSTransform.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/6/8.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YSTransform)<CAAnimationDelegate>

-(void)YSTransform_circleColor_toColor:(UIColor*)toColor Duration:(CGFloat)duration StartPoint:(CGPoint)startPoint;

-(void)YSTransform_circleImage_toImage:(UIImage*)toImage Duration:(CGFloat)duration StartPoint:(CGPoint)startPoint;

-(void)YSTransForm_beginZoom_max:(CGFloat)max min:(CGFloat)min;
-(void)YSTransForm_StopZoom;

@end
