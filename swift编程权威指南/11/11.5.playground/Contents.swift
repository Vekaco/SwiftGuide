//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

var myCities = Set(["Atlanta","Chicago","JacksonVille","New York","San Francisco"])

var yourCities = Set(["Chicago","San Francisco","JacksonVille","Boston"])

//在原Set上改动

//myCities.formUnion(yourCities)

myCities.formIntersection(yourCities)
