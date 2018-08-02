//: Playground - noun: a place where people can play
// about Stack
// stack: last in first out
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



protocol baseStack{
    associatedtype Element
    var isEmpty : Bool { get }
    var size : Int {get}
    var peek : Element?{ get}
    mutating func push(_element : Element)
    
    mutating func pop() -> Element?
    
}

struct IntegerStack : baseStack{
    typealias Element = Int
    private var stack = [Element]()
    
    var isEmpty: Bool{
        return stack.isEmpty
    }
    
    var size: Int{
        return stack.count
    }
    var peek: Int?{
        return stack.last
    }
    
    mutating func push(_element: Int) {
        stack.append(_element)
    }
    mutating func pop() -> Element? {
        return stack.popLast()
    }
}
