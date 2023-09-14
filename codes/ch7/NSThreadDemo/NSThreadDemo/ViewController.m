//
//  ViewController.m
//  NSThreadDemo
//
//  Created by 珲少 on 2020/1/29.
//  Copyright © 2020 jaki. All rights reserved.
//

#import "ViewController.h"
#import "MyThread.h"

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willBecomeMultiThreadedNotification) name:NSWillBecomeMultiThreadedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didBecomeSingleThreadedNotification) name:NSDidBecomeSingleThreadedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(threadWillExitNotification) name:NSThreadWillExitNotification object:nil];
}

+ (void)willBecomeMultiThreadedNotification {
    NSLog(@"willBecomeMultiThreadedNotification");
}

+ (void)didBecomeSingleThreadedNotification {
    NSLog(@"didBecomeSingleThreadedNotification");
}

+ (void)threadWillExitNotification {
    NSLog(@"threadWillExitNotification");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d", [NSThread isMultiThreaded]);
    // 将打印<NSThread: 0x600001345dc0>{number = 1, name = main}
//    NSLog(@"%@", [NSThread currentThread]);
//    [NSThread detachNewThreadWithBlock:^{
//        // 将打印<NSThread: 0x600001315980>{number = 8, name = (null)}
//        NSLog(@"%@", [NSThread currentThread]);
//    }];
//
//    [NSThread detachNewThreadSelector:@selector(task) toTarget:self withObject:nil];
//    NSThread *thread = [[NSThread alloc] initWithBlock:^{
//        // 将打印<NSThread: 0x600001315980>{number = 8, name = (null)}
//        NSLog(@"%@", [NSThread currentThread]);
//    }];
//    [thread start];
//
//    NSThread *thread2 = [[NSThread alloc] initWithTarget:self selector:@selector(task) object:nil];
//    [thread2 start];
//

//    MyThread *myThread = [[MyThread alloc] init];
//    [myThread start];
    // 在主线程执行任务
    // waitUntilDone参数设置为NO 则等待当前RunLoop空闲后执行
    // waitUntilDone参数设置为YES 则立刻进行执行
//    [self performSelectorOnMainThread:@selector(task) withObject:nil waitUntilDone:NO modes:@[NSRunLoopCommonModes]];
    // 与上面的写法作用一致 默认modes为NSRunLoopCommonModes
//    [self performSelectorOnMainThread:@selector(task) withObject:nil waitUntilDone:NO];
    
    // 在指定的线程中执行任务 需要注意任务的执行依赖RunLoop，线程的RunLoop必须开启
//    [self performSelector:@selector(task) onThread:myThread withObject:nil waitUntilDone:NO modes:@[NSRunLoopCommonModes]];
    // 与上面的写法作用一致
//    [self performSelector:@selector(task) onThread:myThread withObject:nil waitUntilDone:NO];
    
    // 在系统的后台线程中执行任务
//    [self performSelectorInBackground:@selector(task) withObject:nil];
    [NSThread sleepForTimeInterval:4];
    NSLog(@"End");
    NSLog(@"%@", [NSThread callStackReturnAddresses]);
    NSLog(@"%@", [NSThread callStackSymbols]);
}

- (void)task {
    // 将打印<NSThread: 0x600001334c80>{number = 7, name = (null)}
    NSLog(@"task:%@", [NSThread currentThread]);
}


@end
