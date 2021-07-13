/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result = [[Int]]()
        guard let node = root else {
            return result
        }
        
        var queue = [TreeNode]()
        queue.append(node)
        while queue.count != 0 {
            var current_level = [Int]()
            for _ in 0..<queue.count {
                let currentNode = queue[0] // queue.peek
                current_level.append(currentNode.val)
                if let left = currentNode.left {
                    queue.append(left)
                }
                if let right = currentNode.right {
                    queue.append(right)
                }
                queue.remove(at: 0) // queue.pop
            }
            result.append(current_level)
        }
        
        return result
    }
}