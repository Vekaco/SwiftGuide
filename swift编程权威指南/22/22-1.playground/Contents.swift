//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
struct Stack {
    var items = [Int]()
    
    mutating func push(_ newItem: Int) {
        items.append(newItem)
    }
    mutating func pop() -> Int? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
}

var inStack = Stack()
inStack.push(1)
inStack.push(2)
print(inStack.pop())
print(inStack.pop())
print(inStack.pop())
