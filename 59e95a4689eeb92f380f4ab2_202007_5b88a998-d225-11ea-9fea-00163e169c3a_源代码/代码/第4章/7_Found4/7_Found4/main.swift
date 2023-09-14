//
//  main.swift
//  7_Found4
//
//  Created by jaki on 2019/10/15.
//  Copyright © 2019 jaki. All rights reserved.
//

func found(array:Array<Int>, indexTable:Array<(Int,Int)>, obj:Int) -> Bool {
    var nextIndex = 0
    for i in 0 ..< indexTable.count {
        if indexTable[i].0 >= obj {
            let index = indexTable[i].1
            if i < indexTable.count - 1 {
                nextIndex = indexTable[i + 1].1
            } else {
                nextIndex = array.count - 1
            }
            for j in index ... nextIndex {
                if obj == array[j] {
                    return true
                }
            }
        }
    }
    return false
}

let array = [22, 12, 13, 8, 9, 20, 33, 42, 44, 38, 24, 48, 60, 58, 74, 49, 86, 53]
let indexTable = [(22, 0), (48, 6), (86, 12)]
print(found(array: array, indexTable: indexTable, obj: 74))

