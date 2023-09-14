//
//  ViewController.m
//  Foundation
//
//  Created by jaki on 2019/9/17.
//  Copyright © 2019 jaki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong) NSString *string1;
@property (weak) NSString *string2;
@property (weak) NSString *string3;
@property (weak) NSString *string4;
@property (weak) NSString *string5;
@property (weak) NSString *string6;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *string1 = @"string1";
    NSString *string2 = @"string2";
    NSString *string3 = [[NSString alloc] initWithString:@"string3"];
    NSString *string4 = [[NSString alloc] initWithFormat:@"string4"];
    __weak NSString *string5 = [[NSString alloc] initWithFormat:@"string5string5"];
    __weak NSString *string6 = [NSString stringWithFormat:@"string6string6string6"];
    
    self.string1 = string1;
    self.string2 = string2;
    self.string3 = string3;
    self.string4 = string4;
    self.string5 = string5;
    self.string6 = string6;
    
    NSLog(@"%@, %@", string1, string1.class);
    NSLog(@"%@, %@", string2, string2.class);
    NSLog(@"%@, %@", string3, string3.class);
    NSLog(@"%@, %@", string4, string4.class);
    NSLog(@"%@, %@", string5, string5.class);
    NSLog(@"%@, %@", string6, string6.class);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@, %@", self.string1, self.string1.class);
    NSLog(@"%@, %@", self.string2, self.string2.class);
    NSLog(@"%@, %@", self.string3, self.string3.class);
    NSLog(@"%@, %@", self.string4, self.string4.class);
    NSLog(@"%@, %@", self.string5, self.string5.class);
    NSLog(@"%@, %@", self.string6, self.string6.class);
}

@end
