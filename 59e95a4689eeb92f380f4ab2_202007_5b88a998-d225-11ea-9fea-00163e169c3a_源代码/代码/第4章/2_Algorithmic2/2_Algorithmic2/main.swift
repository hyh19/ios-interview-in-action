//
//  main.swift
//  2_Algorithmic2
//
//  Created by jaki on 2019/10/11.
//  Copyright © 2019 jaki. All rights reserved.
//

// O(1)
func mul(n:Int) -> Int {
    return n * n
}

print(mul(n: 3))

// O(logn)
func f2(n:Int) {
    var i = 1        // 1
    while i < n {    // log²N
        i *= 2       // log²N
        print(i)     // log²N
    }
}

f2(n: 10)

// O(nlogn)
func f3(n:Int) {
    var j = 0
    while j < n {
        var i = 1        // 1
        while i < n {    // log²N
            i *= 2       // log²N
            print(i)     // log²N
        }
        j += 1
    }
}


// 0(n²)
func f4(n:Int) {
    var i = 0
    while i < n {
        print(i)
        i += 1
    }
}
f4(n: 10)

func f5(n:Int) {
    var j = 0
    while j < n {
        var i = 0
        while i < n {
            i += 1
        }
        j += 1
    }
}

func f6(n:Int) -> Int {
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    return f6(n: n - 1) + f6(n: n - 2)
}

print(f6(n: 9))
