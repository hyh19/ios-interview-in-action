//
//  main.swift
//  5_Found2
//
//  Created by jaki on 2019/10/14.
//  Copyright © 2019 jaki. All rights reserved.
//

// 二分查找
func found(array:Array<Int>, obj:Int) -> Bool {
    var left = 0
    var right = array.count - 1
    while left <= right {
        let mid = Int((right + left) / 2)
        if obj == array[mid] {
            return true
        }
        if obj > array[mid] {
            left = mid + 1
        }
        if obj < array[mid] {
            right = mid - 1
        }
    }
    return false
}

// 插值查找
func found2(array:Array<Int>, obj:Int) -> Bool{
    var left = 0
    var right = array.count - 1
    while left <= right {
        let mid = left + Int((right - left) * (obj - array[left])/(array[right] - array[left]))
        print(mid)
        if obj == array[mid] {
            return true
        }
        if obj > array[mid] {
            left = mid + 1
        }
        if obj < array[mid] {
            right = mid - 1
        }
    }
    return false
}

// 斐波那契查找
func found3(array:Array<Int>, obj:Int) -> Bool {
    // 假设要查找的数组中元素个数不超过144
    let F = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]
    
    var left = 0
    var right = array.count - 1
    var k = 0
    // 找到一个大于或等于元素个数的斐波那契数列中的数
    while right > F[k] {
        k += 1
    }
    
    while left <= right {
        // 进行越界检查
        if k <= 0 {
            k = 1
        }
        var mid = left + F[k - 1] - 1
        // 进行越界检查
        if mid > array.count - 1 {
            mid = array.count - 1
        }
        if mid < 0 {
            mid = 0
        }
        
        if obj == array[mid] {
            return true
        }
        // 对F(n-1)再进行斐波那契分割
        if obj < array[mid] {
            right = mid - 1
            k -= 1
        }
        // 对F(n-2)在进行斐波那契分割
        if obj > array[mid] {
            left = mid + 1
            k -= 2
        }
    }
    return false
}

var array = [1, 3, 5, 7, 9, 11, 22, 199, 300]
print(found3(array: array, obj: 2))

