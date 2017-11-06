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
    
    func map<U>(_ f: (Element) -> U) -> Stack<U> {
        var mappedItems = [U]()
        for item in items {
            mappedItems.append(f(item))
        }
        return Stack<U> (items: mappedItems)
    }
}

var inStack = Stack<Int>()
inStack.push(1)
inStack.push(2)

var doubledStack = inStack.map{
    $0 * 2
}

print(doubledStack.pop())


