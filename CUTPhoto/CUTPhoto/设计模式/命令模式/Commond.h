//
//  Commond.h
//  CUTPhoto
//
//  Created by  xiaotu on 2018/5/25.
//  Copyright © 2018年 白天鹏. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommondExe.h"

@interface Commond : NSObject{
    @protected CommondExe* _exe;
}

@property (nonatomic) NSInteger count;

- (void)exeShaoKao;
- (void)exe;
- (void)cancel;

@end
