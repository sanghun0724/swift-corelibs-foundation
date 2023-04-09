//
//  Hashable_p.swift
//  SwiftFoundation
//
//  Created by sangheon on 2023/04/09.
//  Copyright © 2023 Swift. All rights reserved.
//


struct MyMacBook: Hashable {
    var name: String
    var price: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name) // 데이터 추가
        hasher.combine(price) // 데이터 추가
    }
}
let M1 = MyMacBook(name: "M1", price: 100)
let M2 = MyMacBook(name: "M2", price: 200)
// 구조체를 키값으로~
let macBookDict: [MyMacBook: String] = [M1: "M1 구입했구나", M2: "M2 구입했구나"]
let BuyM1 = macBookDict[MyMacBook(name: "M1", price: 100)] // -> "M1 구입했구나"

