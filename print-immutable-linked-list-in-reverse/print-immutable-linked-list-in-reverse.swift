/**
 * Definition for ImmutableListNode.
 * public class ImmutableListNode {
 *     public func printValue() {}
 *     public func getNext() -> ImmutableListNode? {}
 * }
 */

class Solution {
    func printLinkedListInReverse(_ head: ImmutableListNode?) {
        var stack = [ImmutableListNode?]()
        var node = head
        while (node != nil) {
            stack.append(node)
            node = node?.getNext()
        }
        while (!stack.isEmpty) {
            stack.removeLast()?.printValue()
        }
    }
}