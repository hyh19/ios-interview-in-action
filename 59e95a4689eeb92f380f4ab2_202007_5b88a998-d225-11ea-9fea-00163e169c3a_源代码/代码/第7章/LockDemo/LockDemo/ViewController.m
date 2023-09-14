//
//  ViewController.m
//  LockDemo
//
//  Created by 珲少 on 2020/2/1.
//  Copyright © 2020 jaki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSLog(@"Start");
//    dispatch_sync(dispatch_get_main_queue(), ^{
//        NSLog(@"Task");
//    });
//    NSLog(@"End");
    
//    dispatch_queue_t queue = dispatch_queue_create("queue", DISPATCH_QUEUE_SERIAL);
//    dispatch_async(queue, ^{
//        NSLog(@"Start");
//        dispatch_sync(queue, ^{
//            NSLog(@"Task");
//        });
//        NSLog(@"End");
//    });
    
    NSLog(@"Start");
    dispatch_group_t group = dispatch_group_create();
    dispatch_group_async(group, dispatch_get_main_queue(), ^{
        NSLog(@"Task");
    });
    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
    NSLog(@"End");
    
}


@end
