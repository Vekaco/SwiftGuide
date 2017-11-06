//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

enum TextAlignment:Int {
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

print("left: \(TextAlignment.left.rawValue)")


// create a rawValue
let myRawValue = 20

// try to convert the rawValue to TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into TextAlignment")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

