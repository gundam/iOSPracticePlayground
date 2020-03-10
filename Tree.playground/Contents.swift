import UIKit
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
node6.right = node7

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



