//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var mutablePlayground = "Halo, mutablePlayground"
mutablePlayground += "!"
for c:Character in mutablePlayground.characters {
    print("\(c)")
}

let oneCoolDude = "\u{1f60e}"
let aAcute = "\u{0061}\u{0301}"

let playground = "Hello"
for Scalar in playground.unicodeScalars {
    print("\(Scalar.value)")
}

let start = playground.startIndex
let end = playground.index(start, offsetBy: 3)

let range = start...end
let fourthCharacter = playground[end]
print(fourthCharacter)
print(playground[range])