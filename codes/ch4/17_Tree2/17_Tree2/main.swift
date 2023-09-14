//
//  main.swift
//  17_Tree2
//
//  Created by jaki on 2019/10/24.
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

func makeTree(array:Array<Int>) -> Node? {
    if array.count == 0 {
        return nil
    }
    let root = Node(value: array[0])
    for i in 1 ..< array.count {
        insert(value: array[i], node: root)
    }
    return root
}

func insert(value:Int, node:Node) {
    if node.value > value {
        if let l = node.left {
            insert(value: value, node: l)
        } else {
            node.left = Node(value: value)
        }
    }
    
    if node.value < value {
        if let r = node.right {
            insert(value: value, node: r)
        } else {
            node.right = Node(value: value)
        }
    }
}

func delete(tree:Node, value:Int) -> Node? {
    if tree.value == value {
        if tree.left == nil && tree.right == nil {
            return nil
        }
        
        if tree.left == nil && tree.right != nil {
            return tree.right
        }
        
        if tree.right == nil && tree.left != nil {
            return tree.left
        }
        
        if let l = tree.left, let _ = tree.right {
            // 取左节点最大值
            var max = l
            while let m = max.right {
                max = m
            }
            // 删掉取出的最大值
            let res = delete(tree: tree, value: max.value)
            max.left = res?.left
            max.right = res?.right
            return max
        }
    }
    
    if tree.value > value {
        if let l = tree.left {
            tree.left = delete(tree: l, value: value)
        }
    }
    
    if tree.value < value {
        if let r = tree.right {
            tree.right = delete(tree: r, value: value)
        }
    }
    return tree
}

var list = [4, 6, 1, 2, 8, 10, 0, 3, 7]
let root = makeTree(array: list)
let res = delete(tree: root!, value: 4)
