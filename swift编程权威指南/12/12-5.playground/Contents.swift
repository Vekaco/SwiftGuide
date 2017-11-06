//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

//变长参数

func printPersonalGreeting(to names: String...) {
    for name in names {
        print("Welcome,\(name)")
    }
}

printPersonalGreeting(to: "Kaikai","Jack","Liliam")