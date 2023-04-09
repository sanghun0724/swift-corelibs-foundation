//
//  Comparable_p.swift
//  SwiftFoundation
//
//  Created by sangheon on 2023/04/09.
//  Copyright © 2023 Swift. All rights reserved.
//


struct MyPerson: Comparable {
    var name: String
    var age: Int
    
    static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.age < rhs.age
    }
    
}

let a2 = MyPerson(name: "person1", age: 24)
let b2 = MyPerson(name: "person2", age: 28)

let res3 = a2 < b2 // true
let res4 = a2 != b2 // true
