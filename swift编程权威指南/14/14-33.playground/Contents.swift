//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

indirect enum FamilyTree{
    case noKnownParents
    case oneKnownParent(name:String, ancestors:FamilyTree)
    case twoKnownParenets(fatherName:String, fatherAncestors:FamilyTree,
        motherName:String, motherAncestors:FamilyTree)
}

//same as

/**enum FamilyTree{
    case noKnownParents
    indirect case oneKnownParent(name:String, ancestors:FamilyTree)
    indirect case twoKnownParenets(fatherName:String, fatherAncestors:FamilyTree,
        motherName:String, motherAncestors:FamilyTree)
}*/


let fredAncestors = FamilyTree.twoKnownParenets(fatherName: "Fred Sr.", fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)
