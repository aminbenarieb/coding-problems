Implement Queue using Stacks

### Solution
[[stack]]

```python
# push to top - append()
# peek/pop from top - reverse
# size and is empty - len()
class MyQueue:

    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.stack = []
        

    def push(self, x: int) -> None:
        """
        Push element x to the back of queue.
        """
        self.stack.append(x)
        

    def pop(self) -> int:
        """
        Removes the element from in front of queue and returns that element.
        """
        reversed_stack = self.stack[::-1]
        pop_element = reversed_stack.pop()
        self.stack = reversed_stack[::-1]
        return pop_element
        

    def peek(self) -> int:
        """
        Get the front element.
        """
        reversed_stack = self.stack[::-1]
        peek_element = reversed_stack[-1]
        self.stack = reversed_stack[::-1]
        return peek_element
        

    def empty(self) -> bool:
        """
        Returns whether the queue is empty.
        """
        return len(self.stack) == 0
        


# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
```

 #easy