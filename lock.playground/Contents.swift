import UIKit


let globalQueue = DispatchQueue.global()
let asLock = NSLock()
// MARK:  NSLock
globalQueue.async {
    asLock.lock()
    print("线程1")
    sleep(2)
    asLock.unlock()
    sleep(1)
    print("线程1 解锁成功")
}

globalQueue.async {
    asLock.lock()
    print("线程2")
    asLock.unlock()
    print("线程2 解锁成功")
}

globalQueue.async {
    asLock.lock()
    print("线程3")
    asLock.unlock()
    print("线程3 解锁成功")
}


