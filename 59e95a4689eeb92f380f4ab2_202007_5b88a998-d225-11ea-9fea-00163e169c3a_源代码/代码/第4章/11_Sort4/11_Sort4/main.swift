//
//  main.swift
//  11_Sort4
//
//  Created by jaki on 2019/10/20.
//  Copyright © 2019 jaki. All rights reserved.
//

func sort(array:inout Array<Int>) {
    for i in 1 ..< array.count {
        let obj = array[i]
        for j in 0 ..< i {
            if array[j] > obj {
                array.remove(at: i)
                array.insert(obj, at: j)
                break
            }
        }
    }
}
var array = [3, 5, 1, 8, 9, 2, 7, 4, 11, 54, 0, 10, 9]
sort(array: &array)
print(array)

