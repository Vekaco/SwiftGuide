//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

enum ShapeDimensions {
    case point
    case square(side:Double)
    case rectangle(width:Double, height:Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0.0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: width, height: height):
            return width * height
        }
    
    }
}

var point = ShapeDimensions.point
var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)

point.area()
squareShape.area()
rectShape.area()

