//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func siftBeans(fromGroceryList list:[String]) -> (beans:[String], otherGroceries:[String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    for grocery in list{
        if grocery.hasSuffix("beans"){
            beans.append(grocery)
        }
        else{
            otherGroceries.append(grocery)
        }
        
    }
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: ["green beans","milk","black beans", "pinto beans","apples"])

print("beans:\(result.beans)")

print("other groceries:\(result.otherGroceries)")

