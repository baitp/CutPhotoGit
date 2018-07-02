//
//  View2.m
//  CUTPhoto
//
//  Created by  xiaotu on 2018/4/4.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import "View2.h"

@implementation View2

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
        [self addGestureRecognizer:tap];
    }
    return self;
}


#pragma mark 手势
- (void)tapAction:(UITapGestureRecognizer*)tap{
    NSLog(@"又点击了view2");
}

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView* ll = [super hitTest:point withEvent:event];
    NSLog(@"view2 ll %@", ll);
    return ll;
}


- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    CGRect ff = CGRectMake(self.frame.origin.x-50, self.frame.origin.y-50, 200, 200);
    if (CGRectContainsPoint(ff, point)) {
        return YES;
    }
    return YES;
}

- (NSString *)description
{
    return @"这是view2";
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"点击了view2");
}
@end
