//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var population:Int = 5422
var message:String

if(population < 10000) {
    message = "\(population) is a small town!"
} else if (population >= 10000 && population < 20000) {
    message = "\(population) is a medium town!"
} else {
    message = "\(population) is pretty big!"
}
print(message)