//
//  main.swift
//  10_Sort3
//
//  Created by jaki on 2019/10/18.
//  Copyright © 2019 jaki. All rights reserved.
//

func sort(array:inout Array<Int>) {
    if array.count < 2 {
        return
    }
    
    let base = array[0]
    var leftArray = Array<Int>()
    var rightArray = Array<Int>()
    for i in 0 ..< array.count {
        if array[i] < base {
            leftArray.append(array[i])
        }
        if array[i] > base {
            rightArray.append(array[i])
        }
    }
    sort(array: &leftArray)
    sort(array: &rightArray)
    leftArray.append(base)
    array.replaceSubrange(0 ..< array.count, with: leftArray + rightArray)
}

var array = [3, 2, 5, 1, 8, 7, 0, 11, 20, 17]
sort(array: &array)
print(array)

