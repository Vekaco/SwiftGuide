//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var statusCode:Int = 400
var errorStirng:String = "the request failed, "

switch statusCode {
case 400:
    errorStirng += "error code is \(statusCode) "
//default:
   //
case let unknownCode:
    errorStirng += "\(unknownCode) is unknown"
}
print(errorStirng)