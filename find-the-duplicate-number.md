Find the Duplicate Number

### Solution
[[cyclic-sort]] [[fast-slow-pointers]]
```python
class Solution:
    def findDuplicate(self, nums: List[int]) -> int:
        fast = nums[0]
        slow = nums[0]
        while True:
            fast = nums[nums[fast]]
            slow = nums[slow]
            if slow == fast:
                current = nums[0]
                while current != slow:
                    current = nums[current]
                    slow = nums[slow]
                return slow
        return nums[0]

# [0,1] -> [1,3] -> [3, 2] -> [2, 4] -> [4, 2] -> cycle -> [2,4] 
```

Time Complexity: $$\Theta(n))$$
Space Complexity:  $$\Theta(1)$$