//
//  main.m
//  8_Hash
//
//  Created by jaki on 2019/9/29.
//  Copyright © 2019 jaki. All rights reserved.
//

#import <Foundation/Foundation.h>
int hash(NSString* number) {
    return [[number substringFromIndex:number.length - 2] intValue];
}

@interface Teacher : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *number;

@end

@implementation Teacher

- (NSString *)description {
    return [NSString stringWithFormat:@"number:%@ name:%@", self.number, self.name];
}

- (BOOL)isEqual:(Teacher *)object {
    return [self.number isEqualToString:object.number];
}

@end

@interface ListNode : NSObject

@property (nonatomic, strong) Teacher *value;
@property (nonatomic, strong) ListNode *nextNode;

@end

@implementation ListNode

@end

@interface HashTable : NSObject

@end

@implementation HashTable
{
    void*  _table[100];
}

- (void)setV:(Teacher *)v forK:(NSString *)k {
    ListNode *firstNode = (__bridge id)(*(_table + hash(k)));
    if (firstNode == nil) {
        firstNode = [[ListNode alloc] init];
        firstNode.value = v;
        _table[hash(k)] = (__bridge_retained void *)(firstNode);
    } else {
        while (firstNode != nil) {
            if ([firstNode.value isEqual:v]) {
                firstNode.value = v;
                return;
            }
            firstNode = firstNode.nextNode;
        }
        ListNode *node = [[ListNode alloc] init];
        node.value = v;
        firstNode = (__bridge id)(*(_table + hash(k)));
        firstNode.nextNode = node;
    }
}

- (Teacher *)getV:(NSString *)k {
    ListNode *firstNode = (__bridge id)(*(_table + hash(k)));
    while (firstNode != nil) {
        if ([firstNode.value.number isEqualToString:k]) {
            return firstNode.value;
        }
        firstNode = firstNode.nextNode;
    }
    return nil;
}

@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        HashTable *table = [[HashTable alloc] init];
        Teacher *t1 = [[Teacher alloc] init];
        t1.name = @"珲少";
        t1.number = @"011";
        Teacher *t2 = [[Teacher alloc] init];
        t2.name = @"Lucy";
        t2.number = @"211";
        [table setV:t1 forK:t1.number];
        [table setV:t2 forK:t2.number];
        
        NSLog(@"%@", [table getV:@"011"]);
        NSLog(@"%@", [table getV:@"211"]);
        NSLog(@"%@", [table getV:@"311"]);
    }
    return 0;
}


