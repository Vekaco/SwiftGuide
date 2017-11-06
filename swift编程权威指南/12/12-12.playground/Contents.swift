//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func grabMiddleName(fromFullName name:(String,String?,String)) -> String?{
    return name.1
}
let middleName = grabMiddleName(fromFullName: ("Kaikai", nil, "Fu"))
if let theName = middleName {
    print(theName)
}