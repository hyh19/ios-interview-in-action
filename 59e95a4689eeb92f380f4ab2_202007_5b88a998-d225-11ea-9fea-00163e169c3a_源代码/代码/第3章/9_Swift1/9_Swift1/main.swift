//
//  main.swift
//  9_Swift1
//
//  Created by jaki on 2019/10/5.
//  Copyright © 2019 jaki. All rights reserved.
//

import Foundation

struct TeacherStruct {
    var name:String
    var subject:String
    
    mutating func updateName() {
        self.name = "New"
    }
}

class TeacherClass {
    var name:String
    var subject:String
    
    init(name:String, subject:String) {
        self.name = name
        self.subject = subject
    }
    
    func updateName() {
        self.name = "New"
    }
}

var t1 = TeacherStruct(name: "Jaki", subject: "Swift")
t1.updateName()
let t2 = t1
//t2.name = "Lucy"
print("t1:\(t1.name),t2:\(t2.name)")

var t3 = TeacherClass(name: "Jaki", subject: "Swift")
t3.updateName()
let t4 = t3
t4.name = "Lucy"
print("t3:\(t3.name),t4:\(t4.name)")
//func updateTeacherName(t:TeacherClass) {
//    t.name = "Lucy"
//}
//
//func updateTeacherName(t:TeacherStruct) {
//    t.name = "Lucy"
//}



