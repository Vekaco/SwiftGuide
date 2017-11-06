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

struct StackIterator<T>: IteratorProtocol {
    typealias Element = T
    var stack:Stack<T>
    
    mutating func next() -> Element? {
        return stack.pop()
    }
}

var myStack = Stack<Int>()
myStack.push(1)
myStack.push(2)
myStack.push(3)

var myStackIterator = StackIterator(stack: myStack)
while let value = myStackIterator.next() {
    print(value)
}

