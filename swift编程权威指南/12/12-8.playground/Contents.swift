//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
func divisionDescriptionFor(numerator:Double, denominator:Double,withPunctuation:String = ".") -> String {

    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)"
}

print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0))