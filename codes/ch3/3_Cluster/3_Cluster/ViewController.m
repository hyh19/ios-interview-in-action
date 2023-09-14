//
//  ViewController.m
//  3_Cluster
//
//  Created by jaki on 2019/9/20.
//  Copyright © 2019 jaki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    void *p;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string1 = @"Hello";
    NSString *string2 = @"Hello";
    
    NSLog(@"%p, %p", string1, string2);
    
    NSString * string3 = [NSString stringWithFormat:@"Hello"];
    NSString * string4 = [NSString stringWithFormat:@"Hello"];
    p = (__bridge void *)(string3);
    NSLog(@"%@, %p", string3.class, string3);
    NSLog(@"%@, %p", string4.class, string4);
    
    NSString * string5 = [NSString stringWithFormat:@"HelloHelloHello"];
//    p = (__bridge void *)(string5);
    NSLog(@"%@, %p", string5.class, string5);
//    NSLog(@"%p, %@", p, p);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%p", @"Hello");
    NSLog(@"%p, %@", p, p);
}

@end
