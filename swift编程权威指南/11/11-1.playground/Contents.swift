//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

var groceryBag = Set<String>()
//same as: var groceryBag = Set["One","Two","Three"]
//same as: var groceryBag:Set = ["One","two","three" ]

groceryBag.insert("one")
groceryBag.insert("two")
groceryBag.insert("three")

for food in groceryBag {
    print(food)
}

groceryBag.contains("one")

var friendsBag:Set = ["three","four","five","six"]

let common = groceryBag.union(friendsBag)

let itemsReturn = groceryBag.intersection(friendsBag)

//是否不相交
let itemsDisJoint = groceryBag.isDisjoint(with: friendsBag)
