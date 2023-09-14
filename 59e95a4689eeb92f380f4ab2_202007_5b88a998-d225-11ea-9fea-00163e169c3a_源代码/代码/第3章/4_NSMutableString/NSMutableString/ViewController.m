//
//  ViewController.m
//  NSMutableString
//
//  Created by jaki on 2019/9/22.
//  Copyright © 2019 jaki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string1 = @"Hello";
    NSString *string2 = [NSString stringWithFormat:@"Hello"];
    NSString *string3 = [NSString stringWithFormat:@"HelloWorld"];
 
    NSLog(@"%@, %@, %@", string1.class, string2.class, string3.class);
    NSLog(@"%p, %p, %p", string1, string2, string3);
    
    NSString *string11 = [string1 copy];
    NSString *string22 = [string2 copy];
    NSString *string33 = [string3 copy];
    
    NSLog(@"%@, %@, %@", string11.class, string22.class, string33.class);
    NSLog(@"%p, %p, %p", string11, string22, string33);
    
    NSMutableString *string111 = [string1 mutableCopy];
    NSMutableString *string222 = [string2 mutableCopy];
    NSMutableString *string333 = [string3 mutableCopy];
    
    NSLog(@"%@, %@, %@", string111.class, string222.class, string333.class);
    NSLog(@"%p, %p, %p", string111, string222, string333);
    
    [string111 appendString:@"Hi"];
    NSLog(@"%@", string111);
    
    NSMutableString *mString1 = [NSMutableString stringWithString:@"HelloWorld"];
    NSLog(@"%@, %@, %p", mString1, mString1.class, mString1);
    
    NSString *mString11 = [mString1 copy];
    NSLog(@"%@, %@, %p", mString11, mString11.class, mString11);
    
    NSMutableString *mString111 = [mString1 mutableCopy];
    NSLog(@"%@, %@, %p", mString111, mString111.class, mString111);
    [mString111 appendString:@"Hi"];
    NSLog(@"%@, %@", mString1, mString111);

    
}

@end
