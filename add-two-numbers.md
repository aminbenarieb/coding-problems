Add Two Numbers

### Solution
[[linked list]]
```python
#Constraints:

# The number of nodes in each linked list is in the range [1, 100].
# 0 <= Node.val <= 9
# It is guaranteed that the list represents a number that does not have leading zeros.

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next


class Solution:
    def addTwoNumbers(self, l1: ListNode, l2: ListNode) -> ListNode:
        head = None
        current = head
        remainder = 0 
        
        while l1 != None and l2 != None: 
            val = l1.val + l2.val + remainder
            remainder = val // 10
            val %= 10
            if head is None:
                head = ListNode(val=val, next=None)
                current = head
            else:
                current.next = ListNode(val=val, next=None)
                current = current.next
            l2 = l2.next
            l1 = l1.next
        
        ll = l2 if l1 == None else l1
        
        while ll != None: 
            val = ll.val + remainder
            remainder = val // 10
            val %= 10
            if head is None:
                head = ListNode(val=val, next=None)
                current = head
            else:
                current.next = ListNode(val=val, next=None)
                current = current.next
            ll = ll.next
        
        if remainder != 0:
            current.next = ListNode(val=remainder, next=None)
            
        return head
```

#medium 