//
//  ViewController.m
//  OperationDemo
//
//  Created by 珲少 on 2020/2/1.
//  Copyright © 2020 jaki. All rights reserved.
//

#import "ViewController.h"
#import "MyOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSBlockOperation *blockOperation = [NSBlockOperation blockOperationWithBlock:^{
//        [NSThread sleepForTimeInterval:1];
//        NSLog(@"执行blockOperation任务A:%@", [NSThread currentThread]);
//    }];
//
//    [blockOperation addExecutionBlock:^{
//        [NSThread sleepForTimeInterval:2];
//        NSLog(@"执行blockOperation任务B:%@", [NSThread currentThread]);
//    }];
//
//    [blockOperation addExecutionBlock:^{
//        [NSThread sleepForTimeInterval:1];
//        NSLog(@"执行blockOperation任务C:%@", [NSThread currentThread]);
//    }];
//    blockOperation.completionBlock = ^{
//        NSLog(@"执行完毕");
//    };
//    NSInvocationOperation *invocationOperation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(task) object:nil];
//
//
    NSLog(@"%@", [NSOperationQueue currentQueue]);
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
//    [queue addOperation:blockOperation];
    
    [queue addOperationWithBlock:^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"读任务A：%d", i);
        }
    }];
    [queue addOperationWithBlock:^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"读任务B：%d", i);
        }
    }];
    [queue addBarrierBlock:^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"写任务A：%d", i);
        }
    }];
    [queue addOperationWithBlock:^{
        for (int i = 0; i < 5; i++) {
            NSLog(@"读任务C：%d", i);
        }
    }];
    [queue waitUntilAllOperationsAreFinished];
    NSLog(@"End");
}

- (void)task {
    NSLog(@"执行task任务:%@", [NSThread currentThread]);
}


@end
