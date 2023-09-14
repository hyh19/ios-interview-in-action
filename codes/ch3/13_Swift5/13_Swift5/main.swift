//
//  main.swift
//  13_Swift5
//
//  Created by jaki on 2019/10/9.
//  Copyright © 2019 jaki. All rights reserved.
//

//var dic = ["1" : "one" , "2" : "two", "3" : "three"]
//print(dic)

class Index: Hashable {
    var value:Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.value)
    }
    
    static func == (lhs:Index, rhs:Index) -> Bool {
        return lhs.value == rhs.value
    }
    
    init(value:Int) {
        self.value = value
    }
}

var dic:Dictionary<Index, String> = [Index(value: 0) : "1", Index(value: 1) : "2", Index(value: 2) : "3"]
print(dic.capacity)
dic.updateValue("4", forKey: Index(value: 3))
print(dic.capacity)

