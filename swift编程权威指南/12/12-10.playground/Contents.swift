//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func sortedEvenOddNumbers(_ numbers:[Int]) -> (evens:[Int],odds:[Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers{
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

print(sortedEvenOddNumbers([11,12,13,15,17,19,20]).evens)
print(sortedEvenOddNumbers([11,12,13,15,17,19,20]).odds)


