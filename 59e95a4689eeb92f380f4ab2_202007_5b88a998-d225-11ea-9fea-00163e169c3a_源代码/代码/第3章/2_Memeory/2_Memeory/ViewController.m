//
//  ViewController.m
//  2_Memeory
//
//  Created by jaki on 2019/9/20.
//  Copyright © 2019 jaki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%p", @"Hello");
    
    static int data = 1;
    static int bss;
    static int data2 = 1;
    static int bss2;
    NSLog(@"data:%p, bss:%p", &data, &bss);
    NSLog(@"data2:%p, bss2:%p", &data2, &bss2);
    
    NSObject *object = [[NSObject alloc] init];
    NSObject *object2 = [[NSObject alloc] init];
    NSLog(@"%p, %p", object, &object);
    NSLog(@"%p, %p", object2, &object2);
    NSLog(@"%d", sizeof(NSObject *));
}


@end
