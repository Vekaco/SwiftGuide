//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
struct Person {
    let name: String
    let age: Int
    let yearsOfExperience:Int
}

struct Department {
    let name:String
    var people = [Person]()
    init(name: String) {
        self.name = name
    }
    mutating func add(_ person:Person) {
        people.append(person)
    }
}

var department = Department(name: "Engineering")
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))





