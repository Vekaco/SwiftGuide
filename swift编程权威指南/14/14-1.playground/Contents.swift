//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

enum TextAlignment {
    case left
    case right
    case center
//    case justify
}

var alignment: TextAlignment = TextAlignment.left

alignment = .right


//if alignment == .right {
//    print("alignment is right")
//}

switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
//default:
//    print("center aligned")
}