//
//  MyThread.m
//  NSThreadDemo
//
//  Created by 珲少 on 2020/1/29.
//  Copyright © 2020 jaki. All rights reserved.
//

#import "MyThread.h"

@implementation MyThread

- (void)main {
    NSLog(@"自定义线程任务：%@", [NSThread currentThread]);
    [[NSRunLoop currentRunLoop] run];
}

@end
