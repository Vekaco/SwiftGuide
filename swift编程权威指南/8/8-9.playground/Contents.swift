//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var errorCodeString:String?
errorCodeString = "404"
var errorDescription:String?
if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger + 200) : resource not found!"
}
//errorDescription = nil
var upCaseErrorDescription = errorDescription?.uppercased()
upCaseErrorDescription?.append("PLEASE TRY AGAIN.")
upCaseErrorDescription
