//
//  main.m
//  5_NSArray
//
//  Created by jaki on 2019/9/23.
//  Copyright © 2019 jaki. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array0 = [NSArray alloc];
        NSArray *array00 = [NSArray alloc];
        NSArray *array1 = @[];
        NSArray *array2 = [[NSArray alloc] init];
        NSArray *array3 = [NSArray arrayWithObject:@"1"];
        NSArray *array4 = @[@"1"];
        NSArray *array5 = [[NSArray alloc] initWithObjects:@"1", @"2", nil];
        NSArray *array6 = @[@"1", @"2", @"3"];
        
        NSLog(@"array0:%@, %p", array0.class, array0);
        NSLog(@"array00:%@, %p", array00.class, array00);
        NSLog(@"array1:%@, %p", array1.class, array1);
        NSLog(@"array2:%@, %p", array2.class, array2);
        NSLog(@"array3:%@, %p", array3.class, array3);
        NSLog(@"array4:%@, %p", array4.class, array4);
        NSLog(@"array5:%@, %p", array5.class, array5);
        NSLog(@"array6:%@, %p", array6.class, array6);
        
        NSLog(@"%p, %p, %@", [NSString alloc], [NSString alloc], [NSString alloc].class);
        
        NSMutableArray *mArray1 = [[NSMutableArray alloc] init];
        NSMutableArray *mArray2 = [[NSMutableArray alloc] initWithObjects:@"1", nil];
        NSMutableArray *mArray3 = [[NSMutableArray alloc] initWithArray:@[@"1", @"2", @"3"]];
        NSLog(@"mArray1:%@, %p", mArray1.class, mArray1);
        NSLog(@"mArray2:%@, %p", mArray2.class, mArray2);
        NSLog(@"mArray3:%@, %p", mArray3.class, mArray3);
    }
    return 0;
}
