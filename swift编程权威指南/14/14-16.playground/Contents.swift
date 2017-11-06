//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

enum ProgrammingLanguage:String {
    case swift = "swift"
    case objectiveC = "objective-C"
    case c = "C"
    case cpp = "C++"
    case java = "java"
}

let myFavoriteLanguage = ProgrammingLanguage.swift

print("My favorite programming language is \(myFavoriteLanguage)")