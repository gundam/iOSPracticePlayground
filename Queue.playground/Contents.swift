//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Queue{
    associatedtype Element
    var isEmpty: Bool{get}
    
    var size: Int{get}
    
    var peek:Element?{ get }
    
    mutating func enqueue(_element:Element)
    
    mutating func dequeue() -> Element?
}


struct IntergerQueue : Queue{
    typealias Element = Int
    private var queue = [Element]()
    var isEmpty: Bool{
        return queue.isEmpty
    }
    var size: Int{
        return queue.count
    }
    var peek: Element?{
        return queue.first
    }
    
    mutating func enqueue(_element: Element) {
        queue.append(_element)
    }
    
    mutating func dequeue() -> Element? {
        return queue.removeFirst()
    }
}

var testQueue = IntergerQueue()
testQueue.enqueue(_element: 2)
testQueue.enqueue(_element: 3)
testQueue.enqueue(_element: 4)
testQueue.peek
testQueue.isEmpty
testQueue.dequeue()
testQueue.isEmpty
testQueue.dequeue()
testQueue.enqueue(_element: 5)
testQueue.dequeue()
testQueue.dequeue()

