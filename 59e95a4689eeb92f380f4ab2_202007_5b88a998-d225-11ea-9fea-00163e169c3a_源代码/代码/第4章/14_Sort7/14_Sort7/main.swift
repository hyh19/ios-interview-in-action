//
//  main.swift
//  14_Sort7
//
//  Created by jaki on 2019/10/21.
//  Copyright © 2019 jaki. All rights reserved.
//

func sort(array:inout Array<Int>) {
    if array.count == 1 {
        return
    } else {
        var left = Array(array[0 ..< (array.count / 2)])
        var right = Array(array[(array.count / 2) ..< array.count])
        sort(array: &left)
        sort(array: &right)
        array = merge(left: left, right: right)
    }
}

func merge(left:Array<Int>, right:Array<Int>) -> Array<Int> {
    var array = Array<Int>()
    var l = left
    var r = right
    while l.count > 0 && r.count > 0 {
        if l[0] > r[0] {
            array.append(r[0])
            r.remove(at: 0)
        } else {
            array.append(l[0])
            l.remove(at: 0)
        }
    }
    if l.count > 0 {
        array.append(contentsOf: l)
    }
    if r.count > 0 {
        array.append(contentsOf: r)
    }
    return array
}
var array = [3, 5, 6, 10, 1, 2, 5, 7, 11, 0, 9, 98, 2, 0]
sort(array: &array)
print(array)
