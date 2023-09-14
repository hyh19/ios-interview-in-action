//
//  main.swift
//  6_Found3
//
//  Created by jaki on 2019/10/15.
//  Copyright © 2019 jaki. All rights reserved.
//

class Node {
    var left:Node?
    var right:Node?
    var value:Int
    
    init(value:Int) {
        self.value = value
    }
}

func found(rootNode:Node?, obj:Int) -> Bool {
    var node = rootNode
    while node != nil {
        if node!.value == obj {
            return true
        }
        if node!.value > obj {
            node = node!.left
            continue
        }
        if node!.value < obj {
            node = node!.right
            continue
        }
    }
    return false
}

// 构建树
let root = Node(value: 45)
let left = Node(value: 24)
let right = Node(value: 53)
left.left = Node(value: 12)
left.right = Node(value: 37)
right.right = Node(value: 93)
root.left = left
root.right = right
// 测试
print(found(rootNode: root, obj: 12))
