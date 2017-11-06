//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

enum ShapeDimensions{
    case point
    case square(side:Double)
    case rectangle(width:Double, height:Double)
    case triangle(side1:Double, side2:Double, side3:Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: width, height: height):
            return width * height
        case let .triangle(side1: a, side2: b, side3: c):
            let p = (a + b + c) / 2
            return sqrt(p * (p - a) * (p - b) * (p - c))
        }
    }
}

var triangle = ShapeDimensions.triangle(side1: 2.0, side2: 3.0, side3: 4.0)
triangle.area()