//: Playground - noun: a place where people can play
// about Stack
// stack: first in first out
import UIKit

var str = "Hello, playground"

class ASStack{
    var stack : [Any] = []
    
    func size() -> Int {
        return stack.count
    }
    init() {
        stack = [Any]()
    }
    func pop() -> Any? {
        return stack.removeLast()
    }
    
    func push(object : Any) -> ()  {
        stack.append(object)
    }
}

extension ASStack : CustomStringConvertible{
    var description: String {
        get {
            var outString : String = ""
            for item : Any in self.stack {
                let temp =  item as! String
                outString += temp
            }
            return outString
        }
        
    }
}

var stack = ASStack()
stack.size()
stack.push(object: "xx  c")
stack.push(object: "12xxwwww")
stack.size()
print(stack)

