//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func myMap<T,U>(_ items:[T], _ f:(T)->(U)) -> [U] {
    var result = [U]()
    for item in items {
        result.append(f(item))
    }
    return result
}

let strings = ["one", "two", "three"]
let stringLengths = myMap(strings){$0.characters.count}

print(stringLengths)
