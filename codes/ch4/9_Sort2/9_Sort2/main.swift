//
//  main.swift
//  9_Sort2
//
//  Created by jaki on 2019/10/17.
//  Copyright © 2019 jaki. All rights reserved.
//

func sort(array:inout Array<Int>) {
    for i in 0 ..< array.count {
        var min = i
        for j in (i + 1) ..< array.count {
            if array[min] > array[j] {
                min = j
            }
        }
        if i != min {
            array.swapAt(i, min)
        }
    }
}

var array = [3, 4, 1, 10, 2, 6, 5, 8, 7, 11, 0]
sort(array: &array)
print(array)

