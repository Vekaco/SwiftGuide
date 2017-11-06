//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var bucketList:Array<String> = ["A","B","C","D","E"]

var index:Int?
index = bucketList.index(of: "B")
if(index != nil) {
    bucketList[index! + 2]
}