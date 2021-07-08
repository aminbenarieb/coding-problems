Implement Stack using Queues

### Solution
[[queue]]
```
python
# Constraints: You must use only standard operations of a queue, which means only:
# push to back 
# peek/pop from front
# size and is empty operations are valid.

# Solution: List
# push to back - append()
# peek/pop from front - reversed(), [0] / pop(0), reversed() back
# size - len() operation


class MyStack:

    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.queue = []
        

    def push(self, x: int) -> None:
        """
        Push element x onto stack.
        """
        self.queue.append(x)
        

    def pop(self) -> int:
        """
        Removes the element on top of the stack and returns that element.
        """
        reversed_queue = self.queue[::-1]
        pop_element = reversed_queue.pop(0)
        self.queue = reversed_queue[::-1]
        return pop_element
        

    def top(self) -> int:
        """
        Get the top element.
        """
        reversed_queue = self.queue[::-1]
        top_element = reversed_queue[0]
        self.queue = reversed_queue[::-1]
        return top_element
        

    def empty(self) -> bool:
        """
        Returns whether the stack is empty.
        """
        return len(self.queue) == 0
        


# Your MyStack object will be instantiated and called as such:
# obj = MyStack()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
```

 #easy