//
//  main.swift
//  8_Sort1
//
//  Created by jaki on 2019/10/16.
//  Copyright © 2019 jaki. All rights reserved.
//

func sort(array:inout Array<Int>) {
    for i in 0 ..< array.count - 1 {
        for j in 0 ..< array.count - i - 1 {
            if array[j] > array[j + 1] {
                array.swapAt(j, j + 1)
            }
        }
    }
}

var array = [1, 3, 2, 5, 6, 4, 8, 11, 9, 0]
sort(array: &array)
print(array)

