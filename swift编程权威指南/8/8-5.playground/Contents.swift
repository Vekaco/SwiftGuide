//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var errorCodeString: String?
errorCodeString = "404"
/*if let theError = errorCodeString {
    print(theError)
    if let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
    }
}*/
if let theError = errorCodeString, let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
    
}