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
    
    
    let a = MyPerson(name: "person1", age: 24)
    let b = MyPerson(name: "person2", age: 28)

    let res = a < b // true
    let res = a != b // true 
}
