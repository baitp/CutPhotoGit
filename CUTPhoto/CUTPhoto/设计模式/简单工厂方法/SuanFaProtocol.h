//
//  SuanFaProtocol.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/23.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SuanFaProtocol <NSObject>

@property (nonatomic) NSInteger a;
@property (nonatomic) NSInteger b;

- (NSInteger)operation;

@end
