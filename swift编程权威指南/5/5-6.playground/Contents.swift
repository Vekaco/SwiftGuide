//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var statusCode:Int = 404
var errorMessage:String = "the request failed, "

switch statusCode {
case 100, 101:
    errorMessage += "Infromational, \(statusCode)"
case 204:
    errorMessage += "Successful but no content, 204"
case 300...307:
    errorMessage += "redirection, \(statusCode)"
case 500...505:
    errorMessage += "server error, \(statusCode)"
case let unknwonCode where (unknwonCode >= 200 && unknwonCode < 300) || unknwonCode > 505:
    errorMessage += "\(unknwonCode) is not a known error code"
default:
    errorMessage += "unexpected error encountered"
}

//let error = (statusCode, errorMessage)
//
//print(error.0)
//print(error.1)

let error = (code: statusCode, message: errorMessage)

print(error.code)
print(error.message)