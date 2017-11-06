//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
let point = (x:1, y:4)
switch point {
case let q1 where (point.x > 0) && (point.y > 0):
    print("\(q1) is in quadrant 1")
default:
    print("")
}

let age = 26
if case 25...30 = age, age > 21, age < 30 {
print("meets all the condition")
}