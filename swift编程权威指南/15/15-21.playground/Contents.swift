//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func changeTo(firstName:String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var p = Person()

let changeName = Person.changeTo
let changeNameForMatt = changeName(&p)
changeNameForMatt("John","Gallafher")
p.firstName

p.changeTo(firstName: "John2", lastName: "Gallafher2")
p.firstName