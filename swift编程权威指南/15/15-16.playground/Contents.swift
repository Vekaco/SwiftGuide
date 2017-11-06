//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func greet(name:String, withGreeting greeting:String) -> String {
    return "\(greeting) \(name)"
}

greet(name: "Matt", withGreeting: "Hello,")

func greeting(forName name:String) -> (String) -> String {
    func greeting(_ greeting:String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

let greetWith = greeting(forName: "Matt")
var matt = greetWith("Hello,")
print(matt)


func greeting2(_ name:String) -> (String) -> String {
    return {(greeting:String) -> String in
        return "\(greeting) \(name)"
    }
    
}

var gt = greeting2("Matt2")
var gt2 = gt("Hello,")
print(gt2)
