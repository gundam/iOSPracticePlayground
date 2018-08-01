//: Playground - noun: a place where people can play
// DIC
import UIKit

var str = "Hello, playground"

var nums : Dictionary = [String:Any]()
nums["ket"] = "ss"
nums.count
nums.keys.contains("ket")
nums["ket"]
nums

var numsCopy = nums
nums["copty"] = "copu"
numsCopy

nums.isEmpty
//nums.removeValue(forKey: "ket")
nums.isEmpty
nums.updateValue("wix", forKey: "ket")
nums

for item in nums {
    print(item.key)
    print(item.value)
    print(item)
}





