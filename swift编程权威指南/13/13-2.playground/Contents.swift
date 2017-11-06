//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

let volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(_ i:Int,_ j:Int) -> Bool {
    return i < j
}
let volunteerSorted = volunteerCounts.sorted(by:sortAscending)