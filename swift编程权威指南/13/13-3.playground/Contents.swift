//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

let volunteerCounts = [1,3,40,32,2,53,77,17]

let volunteerSorted = volunteerCounts.sorted(by: {
    (i : Int, j : Int) -> Bool in
        return i < j
})