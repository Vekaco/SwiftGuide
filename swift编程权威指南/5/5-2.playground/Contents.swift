//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
let statusCode:Int = 404
var errorMessage:String = "request failed,"
switch statusCode {
case 400,404:
    errorMessage = "status code error."
    fallthrough
default:
    errorMessage += "please review request."
}
print(errorMessage)