import UIKit

var str = "Hello, playground"

// MARK:  QucikSort
func partition( data:inout [Int],low:Int,high:Int) -> Int {
    
    let root = data[high]
    var index = low
    for i in low...high {
        if data[i] < root {
            if i != index {
                data.swapAt(i, index)
            }
            index = index+1
        }
    }
    
    if high != index {
        data.swapAt(high, index)
//        swap(&data[high], &data[index])
    }
    return index
}

func quickSort(data:inout [Int],low:Int,high:Int) -> Void {
    if low > high {
        return
    }
    let sortIndex = partition(data: &data, low: low, high: high)
    quickSort(data: &data, low: low, high: sortIndex-1)
    quickSort(data: &data, low: sortIndex+1, high: high)
}

var data:[Int] = [1,2,3,2,4,8,9,10,19,0]
let result = quickSort(data: &data,low: 0, high: data.count - 1)
print(data)
