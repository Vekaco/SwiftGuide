//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
var shields = 5
var blasterOverheating = false
var blasterFireCount = 0
var spaceDemonDestroyed = 0

while shields > 0 {
    if (spaceDemonDestroyed > 500) {
        print("Your beat the game!")
        break;
    }
    
    if blasterOverheating {
        print("Blasters are overheated! cooldown initiated!")
        sleep(5)
        print("Blaster ready to fire")
        sleep(1)
        blasterOverheating = false
        blasterFireCount = 0
    }
    if blasterFireCount > 100 {
        blasterOverheating = true
        continue
    }
    print("Fire blasters!")
    blasterFireCount += 1
    spaceDemonDestroyed += 1
    
}