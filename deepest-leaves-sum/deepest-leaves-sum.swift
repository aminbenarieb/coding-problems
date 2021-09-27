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
    func findMaxLevel(node: TreeNode?, level: Int, maxLevel: inout Int) {
        guard let node = node else { return }
        var level = level + 1
        findMaxLevel(node: node.left, level: level, maxLevel: &maxLevel)
        if (level > maxLevel) {
            maxLevel = level
        }
        findMaxLevel(node: node.right, level: level, maxLevel: &maxLevel)
    }
    func calculateSum(node: TreeNode?, level: Int, levelToSum: Int, result: inout Int) {
        guard let node = node else { return }
        var level = level + 1
        calculateSum(node: node.left, level: level, levelToSum: levelToSum, result: &result)
         if (level == levelToSum) {
             result += node.val
         }
        calculateSum(node: node.right, level: level, levelToSum: levelToSum, result: &result)
    }
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        var maxLevel = -1
        findMaxLevel(node: root, level: 0, maxLevel: &maxLevel)
        var deepstSum = 0
        calculateSum(node: root, level: 0, levelToSum: maxLevel, result: &deepstSum)
        return deepstSum
    }
}