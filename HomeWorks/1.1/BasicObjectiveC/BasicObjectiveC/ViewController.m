//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "TestQueue.h"
#import "TestStack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    
    // 1.1-1
    NSArray *buf = @[
                     @{@"domain": @"mixi.jp",
                       @"entry": @[
                               @"list_voice.pl",
                               @"list_diary.pl",
                               @"list_mymall_item.pl"]
                       },
                     @{@"domain": @"mmall.jp",
                       @"entry": @[
                               @{@"path": @"add_diary.pl",
                                 @"query": @[@{@"tag_id": @7}]
                                 }
                               ]
                       },
                     @{@"domain": @"itunes.apple.com"}
                     ];
    NSLog(@"%@", buf);
    
    // 1.1-2
    
    TestQueue *queue = [[TestQueue alloc] init];
    
    [queue push:@"a"];
    [queue push:@"i"];
    [queue pop];
    [queue push:@"u"];
    [queue pop];
    [queue push:@"e"];
    [queue push:@"o"];

    TestStack *stack = [[TestStack alloc] init];

    [stack push:@"a"];
    [stack push:@"i"];
    [stack pop];
    [stack push:@"u"];
    [stack pop];
    [stack push:@"e"];
    [stack push:@"o"];
    
    NSLog(@"%@", queue);
    NSLog(@"%@", stack);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
