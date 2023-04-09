//
//  Equatable_p.swift
//  SwiftFoundation
//
//  Created by sangheon on 2023/04/09.
//  Copyright © 2023 Swift. All rights reserved.
//

@_implementationOnly import CoreFoundation

struct MyFood: Equatable {
    var name: String
    var price: Int
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.price == rhs.price && lhs.name != rhs.name
    }
}

let a = MyFood(name: "banana", price: 100)
let b = MyFood(name: "kimchi", price: 200)

let res = a == b
let res2 = a != b


