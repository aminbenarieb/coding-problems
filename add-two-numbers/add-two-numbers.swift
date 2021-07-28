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
// non-empty
// non-negative
// integers
// everse order
// do not contain leading zero, except 0 itself

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // summing until one of the lists ends
            // suming taknig remainder of 10, adding it to the next
        // if all lists ends and their is a remainder
            // add it as a new node
        // else
            // iterate over the left list as above
        
        var l1 = l1
        var l2 = l2
        var remainder = 0
        var prevNode = Optional<ListNode>(nil)
        var head = Optional<ListNode>(nil)
        // I
        while (l1 != nil && l2 != nil) {
            guard let val1 = l1?.val, let val2 = l2?.val else {
                break
            }
            var val = val1 + val2 + remainder
            remainder = val / 10 // integer division
            val %= 10
            let node = ListNode(val, nil)
            prevNode?.next = node
            prevNode = node
            if head == nil {
                head = node
            }
            l1 = l1?.next
            l2 = l2?.next
        }
        // II
        var l = l1 ?? l2
        while (l != nil) {
            guard var val = l?.val else {
                break
            }
            val += remainder
            remainder = val / 10
            val %= 10
            let node = ListNode(val, nil)
            prevNode?.next = node
            prevNode = node
            l = l?.next
        }
        // III
        if remainder != 0 {
            let node = ListNode(remainder, nil)
            prevNode?.next = node
            prevNode = node
        }
        return head
    }
}