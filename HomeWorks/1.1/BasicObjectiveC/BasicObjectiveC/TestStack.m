//
//  TestStack.m
//  BasicObjectiveC
//
//  Created by Noda Shimpei on 2014/06/02.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "TestStack.h"

@interface TestStack ()

@property (nonatomic, readwrite, strong) NSMutableArray *buffer;

@end

@implementation TestStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        _buffer = [NSMutableArray array];
    }
    return self;
}

- (void)push:(id)object {
    [self.buffer insertObject:object atIndex:0];
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
