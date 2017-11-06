//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func divisionDescriptionFor(numberator:Double, denominator:Double,
                            withPunctuation punctuation:String = "."){
    print("\(numberator) divided by \(denominator) equals \(numberator / denominator)\(punctuation)")
}

divisionDescriptionFor(numberator: 9.0, denominator: 3.0)
divisionDescriptionFor(numberator: 9.0, denominator: 3.0, withPunctuation: "!")