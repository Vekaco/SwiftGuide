//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += ", How are you today"


class GreekGod {
    var name: String
    init(name:String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name


struct Pantheon {
    var chiefGod: GreekGod
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
//pantheon.chiefGod = zeus
zeus.name = "Zeus Jr."
zeus.name

pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name

let athena = GreekGod(name: "Athena")

let gods = [athena, hecate, zeus]

let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy



