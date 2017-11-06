//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

var dict: Dictionary<String, String> = [:]
//same as: var dict = Dictionary<String,String>()
//same as: var dict:[String:String]=[:]
//same as: var dict=[String:String]()

var movieRatings = ["Donnie Darko":4,"Chungking Express":5]

print("I have ranted \(movieRatings.count) movies")


let darkoRating = movieRatings["Donnie Darko"]

movieRatings["Donnie Darko"] = 5

movieRatings

let oldRating = movieRatings.updateValue(3, forKey: "Donnie Darko")

if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("old Rating is \(lastRating), and new rating is \(currentRating).")
}

//字典是无序的
movieRatings["New Movie"] = 2

movieRatings


movieRatings.removeValue(forKey: "New Movie")

movieRatings

movieRatings["Donnie Darko"] = nil

movieRatings


for (key,value) in movieRatings {
    print("the rating of \(key) is \(value)");
}


for key in movieRatings.keys {
    print("I have ratied \(key)")
}




movieRatings["Movie2"] = 3
movieRatings["movie3"] = 4

//convert dictionary to array;
var ratiedMovie:Array<String> = Array(movieRatings.keys)
