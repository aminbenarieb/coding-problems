/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

// Iterative
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var node = head
        var prevNode = Optional<ListNode>(nil)
        while (node != nil) {
            var next = node?.next
            node?.next = prevNode
            prevNode = node
            node = next
        }
        return prevNode
    }
}