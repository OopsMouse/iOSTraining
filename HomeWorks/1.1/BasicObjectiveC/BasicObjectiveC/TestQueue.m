//
//  TestQueue.m
//  BasicObjectiveC
//
//  Created by Noda Shimpei on 2014/06/02.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "TestQueue.h"

@interface TestQueue ()

@property (nonatomic, readwrite, strong) NSMutableArray *buffer;

@end

@implementation TestQueue

- (instancetype)init
{
    self = [super init];
    if (self) {
        _buffer = [NSMutableArray array];
    }
    return self;
}

- (void)push:(id)object {
    [self.buffer addObject:object];
}

- (id)pop {
    id firstObject = [self.buffer firstObject];
    if (firstObject) {
        [self.buffer removeObject:firstObject];
    }
    return firstObject;
}

- (NSInteger)size {
    return [self.buffer count];
}

- (NSString *)description {
    return [self.buffer description];
}

@end
