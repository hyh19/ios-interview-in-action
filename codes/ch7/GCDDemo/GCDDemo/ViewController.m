//
//  ViewController.m
//  GCDDemo
//
//  Created by 珲少 on 2020/1/30.
//  Copyright © 2020 jaki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    dispatch_queue_t queue = dispatch_queue_create("myQueue", DISPATCH_QUEUE_SERIAL);
//    dispatch_sync(queue, ^{
//        NSLog(@"%@:1",[NSThread currentThread]);
//    });
//    dispatch_async(queue, ^{
//        NSLog(@"%@:2",[NSThread currentThread]);
//    });
    
//    dispatch_queue_t queue1 = dispatch_queue_create("myQueue1", DISPATCH_QUEUE_SERIAL);
//    dispatch_queue_t queue2 = dispatch_queue_create("myQueue2", DISPATCH_QUEUE_SERIAL);
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_group_async(group, queue1, ^{
//        // 耗时任务A
//        [NSThread sleepForTimeInterval:1];
//        NSLog(@"任务A完成");
//    });
//    dispatch_group_async(group, queue2, ^{
//        // 耗时任务B
//        [NSThread sleepForTimeInterval:4];
//        NSLog(@"任务B完成");
//    });
//    // 等待 直到队列组中任务执行完成
//    dispatch_group_wait(group, dispatch_time(DISPATCH_TIME_NOW, 3 * (int64_t)1000000000));
//    // 任务C
//    NSLog(@"任务C完成");
//
//    dispatch_queue_t queue3 = dispatch_queue_create("myQueue3", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_group_async(group, queue3, ^{
//        // 耗时任务D
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"任务D完成");
//    });
//    dispatch_group_async(group, queue3, ^{
//        // 耗时任务E
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"任务E完成");
//    });
//    // 一直等待 直到队列组中任务执行完成
//    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
//    // 任务F
//    NSLog(@"任务F完成");
//
//    dispatch_group_async(group, queue3, ^{
//        // 耗时任务G
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"任务G完成");
//    });
//    dispatch_group_async(group, queue3, ^{
//        // 耗时任务H
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"任务H完成");
//    });
//    dispatch_group_notify(group, queue3, ^{
//        // 耗时任务I
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"任务I完成");
//    });
//    // 任务J
//    NSLog(@"任务J完成");
//
//    dispatch_group_t group2 = dispatch_group_create();
//    dispatch_queue_t queue4 = dispatch_queue_create("myQueue4", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_group_async(group2, queue4, ^{
//        [self task:nil];
//    });
//    dispatch_group_notify(group2, queue4, ^{
//        // 任务L
//        NSLog(@"任务L完成");
//    });
//
//    dispatch_group_t group3 = dispatch_group_create();
//    dispatch_queue_t queue5 = dispatch_queue_create("myQueue5", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_group_enter(group3);
//    dispatch_group_async(group3, queue5, ^{
//        [self task:^{
//            dispatch_group_leave(group3);
//        }];
//    });
//    dispatch_group_notify(group3, queue5, ^{
//        // 任务M
//        NSLog(@"任务M完成");
//    });
//    NSArray *array = @[@"a", @"b", @"c", @"d", @"e", @"f", @"g"];
//    // GCD迭代 耗时约为0.00001秒
//    dispatch_apply(array.count, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^(size_t t) {
//        NSLog(@"%@||%zu:%@", [NSThread currentThread], t, array[t]);
//    });
//    // for-in遍历 耗时约为0.001毫秒
//    for (NSString *c in array) {
//        NSLog(@"%@", c);
//    }
    
//    dispatch_source_t source_t = dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_REPLACE, 0, 0, dispatch_get_main_queue());
//    dispatch_source_set_event_handler(source_t, ^{
//        NSLog(@"接收到自定义事件:%lu", dispatch_source_get_data(source_t));
//    });
//    dispatch_resume(source_t);
//
//    for (int i = 0; i < 10; i++) {
//        dispatch_source_merge_data(source_t, 1);
//    }
    
//    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
//    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC, 0);
//    dispatch_source_set_event_handler(timer, ^{
//        NSLog(@"定时器%@", timer);
//    });
//    dispatch_source_set_cancel_handler(timer, ^{
//        NSLog(@"定时器cancel");
//    });
//    dispatch_resume(timer);
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        dispatch_source_cancel(timer);
//    });
//    static int count = 0;
//    dispatch_semaphore_t semaphore_t = dispatch_semaphore_create(0);
//    dispatch_semaphore_signal(semaphore_t);
//    while (1) {
//        dispatch_semaphore_wait(semaphore_t, DISPATCH_TIME_FOREVER);
//        NSLog(@"%d", count++);
//    }
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
//        NSLog(@"延时任务");
//    });
//    NSLog(@"End");
    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        // 这里的代码只会被执行一次 线程安全
//    });
    
    dispatch_queue_t queue = dispatch_queue_create("MyQueue", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"读任务1:%d", i);
        }
    });
    dispatch_barrier_async(queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"写任务1:%d", i);
        }
    });
    dispatch_async(queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"读任务2:%d", i);
        }
    });
    dispatch_async(queue, ^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"读任务3:%d", i);
        }
    });
    
    dispatch_resume(<#dispatch_object_t  _Nonnull object#>)
}

- (void)task:(void(^)(void))finish {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSLog(@"异步任务task完成");
        if (finish) {
            finish();
        }
    });
}


@end
