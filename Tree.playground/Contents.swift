import UIKit

protocol Queue{
    associatedtype Element
    var isEmpty: Bool{get}
    
    var size: Int{get}
    
    var peek:Element?{ get }
    
    mutating func enqueue(_element:Element)
    
    mutating func dequeue() -> Element?
}

struct TreeNodeQueue: Queue{
    typealias Element = TreeNode
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

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

let node1 = TreeNode(1)
let node2 = TreeNode(2)
let node3 = TreeNode(3)
let node4 = TreeNode(4)
let node5 = TreeNode(5)
let node6 = TreeNode(6)
let node7 = TreeNode(7)

node1.left = node2
node1.right = node3
node2.left = node4
node3.left = node5
node3.right = node6
node6.left = node7

// MARK:  节点个数
func getNodeNum(rootNode: TreeNode?) -> Int{
    if rootNode == nil {
        return 0
    }
    return getNodeNum(rootNode: rootNode?.left) + getNodeNum(rootNode: rootNode?.right) + 1
}
let num = getNodeNum(rootNode: node1)

// MARK:  二叉树深度
func getDepth(rootNode: TreeNode?) -> Int{
    if rootNode == nil {
        return 0
    }
    let leftDepth = getDepth(rootNode: rootNode?.left)
    let rightDepth = getDepth(rootNode: rootNode?.right)
    let depth = (leftDepth > rightDepth ? leftDepth : rightDepth) + 1
    return depth
}

let depth = getDepth(rootNode: node1)


// MARK:  前序遍历

func preorderTracverse(rootNode: TreeNode?){
    if rootNode == nil {
        return
    }
    print("preorderTracverse node:\(rootNode?.val)")
    preorderTracverse(rootNode: rootNode?.left)
    preorderTracverse(rootNode: rootNode?.right)
}

//preorderTracverse(rootNode: node1)

// MARK:  中序遍历
func inorderTracverse(rootNode: TreeNode?){
    if rootNode == nil {
        return
    }
    inorderTracverse(rootNode: rootNode?.left)
    print("inorderTracverse node: \(rootNode?.val)")
    inorderTracverse(rootNode: rootNode?.right)
}

func inorderTraversal(rootNode: TreeNode?) -> [Int]
{
    if rootNode == nil{
        return []
    }
    var res = [Int]()
    var nodes = [TreeNode]()
    var _node = rootNode
    while nodes.count != 0 || _node != nil {
        while _node != nil  {
            nodes.append(_node!)
            _node = _node?.left
        }
        _node = nodes.removeLast()
        res.append(_node!.val)
        _node = _node?.right
    }
    return res
    
}
let res = inorderTraversal(rootNode: node1)

inorderTracverse(rootNode: node1)

// MARK:  后序遍历

func postorderTracverse(rootNode: TreeNode?){
    if rootNode == nil {
        return
    }
    postorderTracverse(rootNode: rootNode?.right)
//    print("postorderTracvexrse node: \(rootNode?.val)")
    postorderTracverse(rootNode: rootNode?.left)
}

//postorderTracverse(rootNode: node1)

// MARK:  分层遍历二叉树
func levelTraverse(rootNode: TreeNode?)
{
    guard let _rootNode = rootNode else { return  }
    var treequeue = TreeNodeQueue()
    treequeue.enqueue(_element: _rootNode)
    while treequeue.isEmpty == false {
        let treenode = treequeue.peek
        treequeue.dequeue()
        print("levelTraverse node:\(_rootNode.val)")
        if treenode?.right != nil {
            levelTraverse(rootNode: _rootNode.right)
        }
        if treenode?.left != nil {
            levelTraverse(rootNode: _rootNode.left)
        }
        
        
    }
}

//levelTraverse(rootNode: node1)

// MARK:  二叉树第K层的节点个数
func getNodeNumKthLevel(rootNode: TreeNode?, k: Int) -> Int{
    if rootNode == nil || k < 1 {
        return 0
    }
    if k == 1 {
        return 1
    }
    print(k)
    let numleft = getNodeNumKthLevel(rootNode: rootNode?.left, k: k - 1)
    print("-----left \(numleft)")
    let numRight = getNodeNumKthLevel(rootNode: rootNode?.right, k: k - 1)
    print("-----right \(numRight)")
    print("res: \(numleft + numRight)")
    return numleft + numRight
}

//let kthNum = getNodeNumKthLevel(rootNode: node1, k: 4)

func rightSideView(_ rootNode: TreeNode?) -> [Int] {
    if let root = rootNode {
        var result: [Int] = []
        var current: [TreeNode] = [root]
        var next: [TreeNode] = []
        
        while !current.isEmpty {
            if (current.count == 1) {
                result.append(current[0].val)
            }
            let node = current.removeFirst()
            print("node \(node.val)")
            if let left = node.left {
                next.append(left)
            }
            if let right = node.right {
                next.append(right)
            }
            
            if (current.count == 0) {
                current = next
                next = []
            }
        }
        
        return result
    } else {
        return []
    }
}
//let nums = rightSideView(node1)
//print(nums)



// MARK:  二叉树展开为链表
func flatten(_ root: TreeNode?) {
//    guard let root = root else { return }
//    var l = root.left != nil;
//    var r = root.right != nil;
//    flatten(root.left)
//    flatten(root.right)
//    if (l && r) {
//        var left = root.left!;
//        let right = root.right;
//        root.right = left;
//        root.left = nil;
//        while (left.right != nil) {
//            left = left.right!;
//        }
//        left.right = right;
//    } else if (l) {
//        root.right = root.left;
//        root.left = nil;
//    }
}




var mutableArray = ["a","b","c"]
var abc = mutableArray
print(mutableArray)
for _ in abc {
    print("1: \(mutableArray)")
    print("2: \(abc)")
    abc.removeLast()
}

print(mutableArray)

