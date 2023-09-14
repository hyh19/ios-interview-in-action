//
//  main.swift
//  3_Algorithmic3
//
//  Created by jaki on 2019/10/12.
//  Copyright © 2019 jaki. All rights reserved.
//

func f1(array: inout Array<Int>) {
    var i = 0                         //  1
    while i < array.count - 1 {
        var j = 0                     //  1
        while j < array.count - 1 - i {
            if array[j] > array[j+1] {
                array.swapAt(j, j + 1)
            }
            j += 1
        }
        i += 1
    }
}

func f2(array:Array<Int>) -> Array<Int> {
    var result = Array<Int>()           // n
    result.append(array[0])
    var i = 1                           // 1
    while i < array.count {
        var j = 0                       // 1
        while j < result.count {
            if result[j] > array[i] {
                result.insert(array[i], at: j)
                break
            }
            if j == result.count - 1 {
                result.append(array[i])
                break
            }
            j += 1
        }
        i += 1
    }
    return result
}

var array = [3, 5, 7, 4, 1]
array = f2(array: array)
print(array)
