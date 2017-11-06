//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

var zipcode:Dictionary<String, Array<String>> = ["Georgua":["11111","22222","33333"], "Ohio":["123456","789012","456789"]]

for (key, value) in zipcode {
    print("\(key) has the following zip codes: \(value)")
    
}
