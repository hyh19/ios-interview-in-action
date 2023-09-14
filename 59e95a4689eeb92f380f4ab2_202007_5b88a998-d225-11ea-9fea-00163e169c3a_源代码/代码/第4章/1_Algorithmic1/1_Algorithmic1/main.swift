//
//  main.swift
//  1_Algorithmic1
//
//  Created by jaki on 2019/10/10.
//  Copyright © 2019 jaki. All rights reserved.
//


func sum(max:Int) -> Int {
    var i = 1         // 执行1次
    var sum = 0       // 执行1次
    while i <= max {  // 条件判断会执行max + 1次
        sum += i      // 执行max次
        i += 1        // 执行max次
    }
    return sum        // 执行1次
}

print(sum(max: 10))

