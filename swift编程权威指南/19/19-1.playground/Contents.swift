//: Playground - noun: a place where people can play

import Cocoa

//var str = "Hello, playground"

func printTable(_ data: [[String]]) {
    for row in data {
        var out = "|"
        for item in row {
            out += "\(item) |"
        }
        print(out)
    }
}

let data = [["JOE", "30", "6"],
["Karen", "40", "18"],
["Fred", "50", "20"]]

//printTable(data)


func printTableWithColumnName(_ data: [[String]], withColumnLables columnLabels: String...) {
    var firstRow = "|"
    for columnLabel in columnLabels {
        firstRow += "\(columnLabel) |"
    }
    print(firstRow)
    
    printTable(data)
}

//printTableWithColumnName(data, withColumnLables: "Employee Name", "Age", "Year of experience")
func printTableWithColumnNamePadding(_ data: [[String]], withColumnLables columnLabels: String...) {
    var firstRow = "|"
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        firstRow += "\(columnLabel) |"
        columnWidths.append(columnLabel.characters.count)
    }
    print(firstRow)
    
    for row in data {
        var out = "|"
        
        for (j, item) in row.enumerated() {
            let paddingNeeded = columnWidths[j] - item.characters.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += "\(padding)\(item) |"
            //out += "\(item) |"
        }
        print(out)
    }
}
printTableWithColumnNamePadding(data, withColumnLables: "Employee Name", "Age", "Year of experience")
