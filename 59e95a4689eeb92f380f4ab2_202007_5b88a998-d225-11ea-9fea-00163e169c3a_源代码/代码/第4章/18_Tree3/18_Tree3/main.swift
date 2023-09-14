//
//  main.swift
//  18_Tree3
//
//  Created by 珲少 on 2019/10/25.
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
        let b = checkBalance(node: root)
        print(b?.value)
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

// 检查每个节点的平衡因子 返回最小的不平衡子树
func checkBalance(node:Node) -> Node? {
    var res:Node? = nil
    if abs(balance(tree: node)) > 1 {
        res = node
    }
    if let l = node.left {
        if let re = checkBalance(node: l) {
            res = re
        }
    }
    if let r = node.right {
        if let re = checkBalance(node: r) {
            res = re
        }
    }
    return res
}

func LL(node:Node) -> Node {
    let root = node.left
    let right = node.left?.right
    node.left = right
    root?.right = node
    return root!
}

func RR(node:Node) -> Node {
    let root = node.right
    let left = node.right?.left
    node.right = left
    root?.left = node
    return root!
}

func LR(node:Node) -> Node {
    let leftNode = RR(node: node.left!)
    node.left = leftNode
    return LL(node: node)
}

func RL(node:Node) -> Node {
    let rightNode = LL(node: node.right!)
    node.right = rightNode
    return RR(node: node)
}

func high(tree:Node?) -> Int {
    if tree == nil {
        return 0
    }
    if tree?.left == nil && tree?.right == nil {
        return 1
    }
    var lHigh = 0
    var rHigh = 0
    if let l = tree?.left {
        lHigh = high(tree: l)
    }
    if let r = tree?.right {
        rHigh = high(tree: r)
    }
    if lHigh > rHigh {
        return lHigh + 1
    } else {
        return rHigh + 1
    }
}

func balance(tree:Node?) -> Int {
    if tree == nil {
        return 0
    }
    return high(tree: tree?.left) - high(tree: tree?.right)
}

var array = [3, 5, 4]
let node = makeTree(array: array)
let node2 = RL(node: node!)
print(node)


