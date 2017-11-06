//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ newItem:Element){
        items.append(newItem)
    }
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
}

var stringStack = Stack<String>()

stringStack.push("This is a string")
stringStack.push("Another string")
print(stringStack.pop())
