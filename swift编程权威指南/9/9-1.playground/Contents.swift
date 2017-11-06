//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var bucketList:Array<String>
//the above is same as : var bucketList:[String]
bucketList = ["Climb Mt. Everest"]

//it is okay like this: var bucketList = ["Climb Mt. Everest"]
bucketList.append("Fly hot air balloon to Fiji")
var a = bucketList.remove(at: 1)
bucketList.count
bucketList.append("2")
bucketList.append("3")
bucketList[0]
bucketList[0...1]
bucketList[0] = "I changed my mind"
bucketList
bucketList.insert("this is the inserted one", at: 1)

//== used to compare two arrays are equal, not only the contents but the order should be both the same, the result of comparing will be true, otherwise false.

//immutable array
let immutableArray = ["c1","c2"]
//immutableArray.append("c3")