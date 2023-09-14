//
//  main.swift
//  10_Swift2
//
//  Created by jaki on 2019/10/6.
//  Copyright © 2019 jaki. All rights reserved.
//

//var a = 10
//func update(b:inout Int) {
//    b += 1
//    print(b)
//}
//update(b: &a)
//print(a)
//
//
//
//var b = a
//b += 1
//print(a)
//print(b)
//
//var a_p = withUnsafeMutablePointer(to: &a) { (p) -> UnsafeMutablePointer<Int> in
//    return p
//}
//print(a_p)
//a_p.pointee = 11
//print(a)
//print(a_p.pointee)

//var int_p = UnsafeMutablePointer<Int>.allocate(capacity: 2) // 分配空间
//print(int_p)
//int_p.initialize(to: 10)  // 进行初始化
//int_p[1] = 20             // 进行赋值
//print(int_p[0])           // 10
//print(int_p[1])           // 20
//
//int_p.deinitialize(count: 2) // 析构
//int_p.deallocate()        // 释放空间
//print(int_p)
//print(int_p.pointee)

//var array:Array<Int> = [1, 2, 3, 4, 5]
//var array_p = UnsafeBufferPointer<Int>(start: &array, count: array.count)
//if var base = array_p.baseAddress {
//    var i = 0
//    while i < array_p.count {
//        print(base.pointee)
//        base = base.successor()
//        i += 1
//    }
//}

class Teacher {
    var name:String
    var subject:String
    
    init(name:String, subject:String) {
        self.name = name
        self.subject = subject
    }
}

var t:Teacher? = Teacher(name: "Jaki", subject: "Swift")
//var t_p = withUnsafePointer(to: &t!) { (pointer) -> UnsafePointer<Teacher> in
//    return pointer
//}
//t = nil
//print(t_p.pointee.name)   // 会产生运行错误

var t_un = Unmanaged.passRetained(t!)
var t_p = t_un.toOpaque()
t = nil
var tt = unsafeBitCast(t_p, to: Teacher.self)
print(tt.name)
t_un.release()

