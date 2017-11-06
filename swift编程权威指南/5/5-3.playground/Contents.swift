//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

var statusCode:Int = 501
var errorString:String = "the request failed with the error. "
switch statusCode {
case 100, 101:
    errorString += "informational,1XX"
case 500...507:
    errorString += "5XX"
default:
    errorString += "unknown"
}
print(errorString)