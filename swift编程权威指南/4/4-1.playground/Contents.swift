//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
print("the maxium int value is \(Int.max)")
print("the minium int value is \(Int.min)")
print("---------------------------------")
print("the maxiun int8 value is \(Int8.max)")
print("the minium int8 value is \(Int8.min)")
print("---------------------------------")
print("the maxium unsigned int8 is \(UInt8.max)")
print("the minium unsigned int8 is \(UInt8.min)")

//bad values
//let badvalue1:UInt = -1
//let badvalue2:Int8 = 200
print(-13 % 3)

let x:Int8 = 120
//溢出操作符
let z = x &+ 10

//不同数据类型相加
let a:Int16 = 120
let b:Int8 = 10

let c = a + Int16(b)
//let c = Int8(a) + b

let d1 = 1.1
let d2:Double = 1.1

print("d1 + 0.1 = \(d1 +  0.1)")

if(d1 + 0.1 == 1.2) {
    print("it is equals")
}