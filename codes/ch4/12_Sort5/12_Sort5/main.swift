//
//  main.swift
//  12_Sort5
//
//  Created by jaki on 2019/10/20.
//  Copyright © 2019 jaki. All rights reserved.
//

func sort(array:inout Array<Int>) {
    var step:Int = array.count / 2
    while step > 0 {
        for i in 0 ..< step {
            var j = i + step
            while j < array.count {
                let obj = array[j]
                var k = i
                while k < j {
                    if array[k] > obj {
                        array.remove(at: j)
                        array.insert(obj, at: k)
                        break
                    }
                    k += step
                }
                j += step
            }
        }
        step /= 2
    }
}
var array = [18, 4, 6, 1, 8, 7, 2, 10, 99, 0, 2, 9]
sort(array: &array)
print(array)

