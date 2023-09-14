//
//  main.m
//  7_NSDictionary
//
//  Created by jaki on 2019/9/29.
//  Copyright © 2019 jaki. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dic = [NSDictionary alloc];
        NSDictionary *dic0 = @{};
        NSDictionary *dic1 = @{@"1":@"1", @"2" : @"2"};
        NSDictionary *dic2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"1", @"1", nil];
        NSMutableDictionary *mdic = [[NSMutableDictionary alloc] init];
        
        NSLog(@"dic:%@, %p", dic.class, dic);
        NSLog(@"dic0:%@, %p", dic0.class, dic0);
        NSLog(@"dic1:%@, %p", dic1.class, dic1);
        NSLog(@"dic2:%@, %p", dic2.class, dic2);
        NSLog(@"mdic:%@, %p", mdic.class, mdic);
    }
    return 0;
}
