//: Playground - noun: a place where people can play

import UIKit

var str = "abcd"

let num = 3
let numString = String(num)
let numCovert = Int(numString)
let numCovert2 = Int(str)

let len = str.count

str.index(str.startIndex, offsetBy: 3)

let char = str[str.index(str.startIndex, offsetBy: 3)]

str.append("q")
str.remove(at: str.index(str.startIndex, offsetBy: 2))
str

func isStrNum(str: String) ->Bool{
    return Int(str) != nil
}

isStrNum(str: str)
str.sorted()
String(str.sorted())
String(str.sorted { (str1, str2) -> Bool in
    return str1 > str2
})

