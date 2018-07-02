//
//  Beiwanglu.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/28.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beiwanglu : NSObject

@property (nonatomic) NSInteger hp;
@property (nonatomic) NSInteger mp;
@property (nonatomic) NSInteger level;

- (void)save:(NSInteger)HP mp:(NSInteger)mp level:(NSInteger)level;

@end
