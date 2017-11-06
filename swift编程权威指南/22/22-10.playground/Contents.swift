//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func checkIfEqual<T:Equatable> (_ first: T, _ second: T) -> Bool {
    return first == second
}

print(checkIfEqual(1, 1))
print(checkIfEqual("a", "a"))
print(checkIfEqual("a", "b"))

func checkIfDescriptionMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first:T, _ second:U) -> Bool
{
        return first.description == second.description
}

print(checkIfDescriptionMatch(Int(1), Int(2)))
print(checkIfDescriptionMatch(String("123"), String("123")))
