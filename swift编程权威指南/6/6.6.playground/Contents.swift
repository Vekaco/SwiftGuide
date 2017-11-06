//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
for i in 0...100 {
    if i%3 == 0 && i%5 == 0 {
        print("FIZZBUZZ")
        continue
    }
    else if i%3==0 {
        print("FIZZ")
        continue
    }
    else if i%5==0 {
        print("BUZZ")
        continue
    } else {
        print(i)
        continue
    }
    
}
