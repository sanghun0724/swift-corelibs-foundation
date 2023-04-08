//
//  MyString.swift
//  SwiftFoundation
//
//  Created by sangheon on 2023/04/08.
//  Copyright © 2023 Swift. All rights reserved.
//

@_implementationOnly import CoreFoundation

struct MyString: ReferenceConvertible {
    typealias ReferenceType = NSString
    var reference: NSString
    
    init(_ string: String) {
        self.reference = NSString(string: string)
    }
    
    var description: String {
        return reference.description
    }
    
    var debugDescription: String {
        return reference.debugDescription
    }
    
    var hashValue: Int {
        return reference.hash
    }
    
    static func == (lhs: MyString, rhs: MyString) -> Bool {
        return lhs.reference == rhs.reference
    }
    
}
