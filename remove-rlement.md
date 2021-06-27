Remove Element


### Solution

[[two-pointers]]

```python
class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        n = len(nums)
        if n == 0:
            return 0
        if n < 2:
            return 0 if nums[0] == val else 1
        i = 0
        for j in range(0, n):
            if nums[j] != val:
                nums[i] = nums[j]
                i += 1
        return i
```

Time Complexity: $$\Theta(n))$$
Space Complexity:  $$\Theta(1)$$

#easy 