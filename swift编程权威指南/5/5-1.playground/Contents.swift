//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
let statusCode:Int = 404
var errorMessage:String
switch statusCode {
case 400:
    errorMessage = "request error"
case 404:
    errorMessage = "not found"
default:
    errorMessage = "unknown error"
}
print(errorMessage)