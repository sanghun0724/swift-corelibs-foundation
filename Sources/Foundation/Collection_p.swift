//
//  Collection_p.swift
//  SwiftFoundation
//
//  Created by sangheon on 2023/04/11.
//  Copyright © 2023 Swift. All rights reserved.
//
/// Custom MyArray (의미는 별 없음)
struct MyArray<Element>: MutableCollection, RandomAccessCollection {
    private var storage: [Element]
    
    typealias Index = Int
    var startIndex: Int { return storage.startIndex }
    var endIndex: Int { return storage.endIndex }
    func index(after i: Int) -> Int { return storage.index(after: i) }
    
    subscript(postion: Int) -> Element {
        get { return storage[postion] }
        set { storage[postion] = newValue }
    }
    
    func index(_ i: Int, offsetBy distance: Int) -> Int {
        return storage.index(i, offsetBy: distance)
    }
    func index(_ i: Int, offsetBy distance: Int, limitedBy limit: Int) -> Int? {
        return storage.index(i, offsetBy: distance, limitedBy: limit)
    }
    func distance(from start: Int, to end: Int) -> Int {
        return storage.distance(from: start, to: end)
    }
    
    // initializer
    init<S>(_ elements: S) where S: Sequence, Element == S.Element {
        storage = Array(elements)
    }
}
