Linked List cycle II

### Solution

[[fast-slow-pointers]] [[linked list]]

```python

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def detectCycle(self, head: ListNode) -> ListNode:
        if head is None or head.next is None:
            return None
        slow, fast = head, head
        while fast is not None and fast.next is not None:
            slow = slow.next
            fast = fast.next.next
            if slow == fast:
                current = head
                while current != slow:
                    current = current.next
                    slow = slow.next
                return slow
        return None

```


Time Complexity: $$\Theta(N))$$
Space Complexity:  $$\Theta(1)$$

#medium 