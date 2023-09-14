//
//  main.swift
//  12_Swift4
//
//  Created by jaki on 2019/10/9.
//  Copyright © 2019 jaki. All rights reserved.
//

var array:Array<Int> = [1, 2, 3]
print(array.capacity)   // 3
array.append(4)
print(array.capacity)   // 6
array.append(contentsOf: [5, 6, 7])
print(array.capacity)   // 12
array.append(contentsOf: [8, 9, 10, 11, 12, 13])
print(array.capacity)   // 24

var array1 = [1, 2, 3]
var array2 = array1
print(array1, array2)
array2.append(4)
print(array1, array2)
