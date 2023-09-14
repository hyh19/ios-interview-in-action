//
//  main.swift
//  11_Swift3
//
//  Created by jaki on 2019/10/8.
//  Copyright © 2019 jaki. All rights reserved.
//

import Foundation

class Teacher: CustomStringConvertible {
    var name:String
    
    var description: String {
        get {
            return "教师对象:\(self.name)"
        }
    }
    
    init(name:String) {
        self.name = name
    }
}

let t = Teacher(name: "Jaki")

print(t)   // 教师对象:Jaki

var string = "Hello"
var it:String.Iterator = string.makeIterator()
while let c = it.next() {
    print(c)
}

//var newString = "Hello".map { (c) -> String.Element in
//    return c.uppercased().first!
//}

//var newString = "Hello".filter { (c) -> Bool in
//    if c.asciiValue! <= "Z".first!.asciiValue! &&  c.asciiValue! >= "A".first!.asciiValue! {
//        return false
//    }
//    return true
//}

//var newString = "Hello".reduce("") { (result, c) -> String in
//    return result + "!" + String(c)
//
//}

print(newString)  //!H!e!l!l!o




