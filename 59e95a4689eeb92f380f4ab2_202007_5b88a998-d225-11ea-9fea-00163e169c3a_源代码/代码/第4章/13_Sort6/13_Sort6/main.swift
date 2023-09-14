//
//  main.swift
//  13_Sort6
//
//  Created by jaki on 2019/10/20.
//  Copyright © 2019 jaki. All rights reserved.
//

func sort(array:inout Array<Int>) {
    let max = array.max()!
    var pArray =  Array<Int>(repeating: 0, count: max + 1)
    for item in array {
        pArray[item] += 1
    }
    array.removeAll()
    for i in 0 ..< pArray.count {
        var c = pArray[i]
        while c > 0 {
            array.append(i)
            c -= 1
        }
    }
}
var array = [4, 3, 8, 9, 1, 2, 10, 8, 3, 7, 11, 0, 99]
sort(array: &array)
print(array)

