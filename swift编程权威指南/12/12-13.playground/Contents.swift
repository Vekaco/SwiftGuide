//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func greetByMiddleName(fromFullName name:(first:String,middle:String?,last:String)){
    guard let middleName = name.middle else {
        print("Hey, There!")
        return
    }
    print("Hey, \(middleName)")
}

greetByMiddleName(fromFullName: (first: "Kaikai", middle: nil, last: "Fu"))