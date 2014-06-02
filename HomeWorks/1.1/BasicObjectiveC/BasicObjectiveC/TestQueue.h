//
//  TestQueue.h
//  BasicObjectiveC
//
//  Created by Noda Shimpei on 2014/06/02.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestQueue : NSObject

- (void)push:(id)object;
- (id)pop;
- (NSInteger)size;

@end
