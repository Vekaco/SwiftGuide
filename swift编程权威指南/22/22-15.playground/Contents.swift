//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

struct Stack<Element>:Sequence {
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
    
    struct StackIterator<T>: IteratorProtocol {
        typealias Element = T
        var stack:Stack<T>
        
        mutating func next() -> Element? {
            return stack.pop()
        }
    }
    
    func map<U>(_ f: (Element) -> U) -> Stack<U> {
        var mappedItems = [U]()
        for item in items {
            mappedItems.append(f(item))
        }
        return Stack<U> (items: mappedItems)
    }
    func makeIterator() -> StackIterator<Element> {
        return StackIterator(stack: self)
    }
    mutating func pushAll<S:Sequence>(_ sequence: S) where S.Iterator.Element == Element {
        for item in sequence {
            self.push(item)
        }
    }
}
var myStack = Stack<Int>()
myStack.push(1)
myStack.push(2)
for value in myStack{
    print(value)
}
myStack.pushAll([1,2,3])
//for value in myStack{
//    print(value)
//}

