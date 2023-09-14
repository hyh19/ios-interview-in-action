//
//  main.swift
//  16_Tree1
//
//  Created by jaki on 2019/10/23.
//  Copyright © 2019 jaki. All rights reserved.
//

class Node {
    var left:Node?
    var right:Node?
    var value:String
    
    init(value:String) {
        self.value = value
    }
}
// 构建树
let root = Node(value: "A")
let left = Node(value: "B")
let right = Node(value: "E")
left.left = Node(value: "C")
left.right = Node(value: "D")
right.right = Node(value: "F")
root.left = left
root.right = right

//func enumTree(node:Node) {
//    print(node.value)
//    if let left = node.left {
//       enumTree(node: left)
//    }
//    if let right = node.right {
//        enumTree(node: right)
//    }
//}

//func enumTree(node:Node) {
//    if let left = node.left {
//        enumTree(node: left)
//    }
//    print(node.value)
//    if let right = node.right {
//        enumTree(node: right)
//    }
//}

func enumTree(node:Node) {
    if let left = node.left {
        enumTree(node: left)
    }
    if let right = node.right {
        enumTree(node: right)
    }
    print(node.value)
}

enumTree(node: root)
