 Reverse Linked List
 
 ### Solution
 
 [[linked list]]

 ```python
# ASSUMPTION: Listed hasn't cycles
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
# class Solution:
#     def reverseList(self, head: ListNode) -> ListNode:
#         if head == None or head.next == None:
#             return head
        
#         stack = []
#         while head is not None:
#             stack.append(head)
#             head = head.next

#         prev = None
#         while len(stack) != 0:
#             current = stack.pop()
#             if prev is not None:
#                 prev.next = current
#             else:
#                 head = current
#             prev = current
#         current.next = None
        
#         return head

class Solution:
    def reverseList(self, head: ListNode) -> ListNode:
        prev = None
        while head is not None:
            next = head.next
            head.next = prev
            prev = head
            head = next
        return prev

# class Solution:
#     def reverseList(self, head: ListNode) -> ListNode:
#         if head is None or head.next is None:
#             return head
#         node = self.reverseList(head.next)
#         head.next.next = head
#         head.next = None
#         return node
        
 ```
 
Time Complexity: $$\Theta(N)$$
Space Complexity (stack):  $$\Theta(N)$$
Space Complexity (recursive): $$\Theta(N)$$
Space Complexity  $$\Theta(1)$$