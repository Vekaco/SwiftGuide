//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"


var error = "The request failed:"

func appendErrorCode(_ code:Int, toErrorString errorString:inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
//value error will be changed after called function appendErrorCode()
appendErrorCode(400, toErrorString: &error)

error
