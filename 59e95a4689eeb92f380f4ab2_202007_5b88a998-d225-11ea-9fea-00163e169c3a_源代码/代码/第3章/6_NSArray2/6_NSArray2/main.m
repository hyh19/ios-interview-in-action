//
//  main.m
//  6_NSArray2
//
//  Created by jaki on 2019/9/24.
//  Copyright © 2019 jaki. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i < 1; i++) {
            [array addObject:(__bridge id)((void *)1)];
        }
//        NSLog(@"%p", array);
        
        int int_array[] = {1,2,3,4,5,6,7,8,9,10};
        NSLog(@"%d", int_array[3]);
        NSLog(@"%d", *(int_array + 3));
        NSLog(@"%d", *(int_array + 5));
        
    }
    return 0;
}
