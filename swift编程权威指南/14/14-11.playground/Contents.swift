//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

enum TextAlignment:Int {
    case left
    case right
    case center
    case justify
}

print("left: \(TextAlignment.left.rawValue)")
print("right: \(TextAlignment.right.rawValue)")