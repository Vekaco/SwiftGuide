//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var population:Int = 5422
var message:String
var hasPostOffice:Bool = true

if(population < 10000) {
    message = "\(population) is a small town!"
} else {
    message = "\(population) is a  pretty big!"
}
print(message)

if !hasPostOffice {
    print("where do we buy stamps?")
}