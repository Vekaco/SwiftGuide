//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"
func makePopulationTracker(forInitialPopulation population:Int) -> (Int) -> Int{
    var totalPopulation = population
    func populationTracker(growth:Int) -> Int {
        totalPopulation += growth
        return totalPopulation
}
    return populationTracker
}

var currentPopulation = 51422
let growBy =  makePopulationTracker(forInitialPopulation: currentPopulation)
growBy(500)
growBy(500)
growBy(500)
