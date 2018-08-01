//: Playground - noun: a place where people can play
// about Array
import UIKit

let numsLet = [1,2,3]
numsLet.count

var numsVar = [1]
numsVar.count

class ASObjectB{
    init() {
        
    }
}

extension ASObjectB : CustomStringConvertible{
    var description: String {
        return "ASObjectB"
    }
    
}

class ASObjectA {
    var date : String = "a"
    var month : String?
    init() {
        
    }
    
}
ASObjectA()



extension ASObjectA : CustomStringConvertible{
    
    var description : String {
        get{
            return "ASObjectA"
        }
    }
}

let oa = ASObjectA()
oa.date = "v"
let ob = ASObjectA()
//ob.date = "d"
var objects:[Any] = [oa,ob]
objects.count
objects[1]
objects.index(before: 1)
objects.insert(oa, at: 2)
objects.append(ob)
objects.reserveCapacity(2)

objects.sort { (a, b) -> Bool in
    let covertA = a as! ASObjectA
    let covertB = b as! ASObjectA
    return covertA.date > covertB.date
}
objects






//objects.sorted { (<#Any#>, <#Any#>) -> Bool in
//    <#code#>
//}




