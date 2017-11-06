//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

enum ShapeDimensions{
    case point
    case square(side:Double)
    case rectangle(width:Double, height:Double)
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return 4 * side
        case let .rectangle(width: width, height: height):
            return 2 * (width + height)
        }
    }
}

var rect = ShapeDimensions.rectangle(width: 10.0, height: 20.0)
rect.perimeter()