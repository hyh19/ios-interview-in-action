//
//  main.swift
//  4_Found1
//
//  Created by jaki on 2019/10/13.
//  Copyright © 2019 jaki. All rights reserved.
//

func found(array:Array<Int>, obj:Int) -> Bool {
    for i in 0 ..< array.count {
        if array[i] == obj {
            return true
        }
    }
    return false
}

var array = [1, 2, 5, 6, 8, 9]
print(found(array: array, obj: 3))

