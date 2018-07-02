//
//  CommondExe.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommondExe : NSObject

- (void)exe:(NSString*)name count:(NSInteger)count;
- (void)cancel:(NSString*)name count:(NSInteger)count;

@end
