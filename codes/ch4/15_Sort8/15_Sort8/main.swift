//
//  main.swift
//  15_Sort8
//
//  Created by jaki on 2019/10/21.
//  Copyright © 2019 jaki. All rights reserved.
//

func adjust(array:inout Array<Int>) {
    for i in 0 ..< array.count {
        let index = array.count - 1 - i
        var top = array[index]
        var left:Int?
        var right:Int?
        if index * 2 + 1 < array.count {
            left = index * 2 + 1
        }
        if index * 2 + 2 < array.count {
            right = index * 2 + 2
        }
        // 进行调整
        if let l = left {
            if array[l] > top {
                array[index] = array[l]
                array[l] = top
                top = array[index]
            }
        }
        
        if let r = right {
            if array[r] > top {
                array[index] = array[r]
                array[r] = top
                top = array[index]
            }
        }
    }
}

func sort(array:inout Array<Int>) {
    var c = array.count;
    var result = Array<Int>()
    while c > 0 {
        adjust(array: &array)
        result.insert(array.first!, at: 0)
        array.remove(at: 0)
        c -= 1
    }
    array = result
}

var array = [3, 5, 7, 1, 9, 0, 2, 11, 8, 99, 0, 7]
sort(array: &array)
print(array)
