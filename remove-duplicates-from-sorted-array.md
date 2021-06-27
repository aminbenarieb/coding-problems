Remove duplicates from sorted array

### Solution

[[two-pointers]]

```python
# class Solution:
#    def shiftToEnd(self, i, k, nums):
#        for i in range(i, k - 1):
#            nums[i] = nums[i + 1]
#    def removeDuplicates(self, nums: List[int]) -> int:
#        k = len(nums)
#        if k < 2:
#            return k
#        i = 0
#        while i < k - 1:
#            if nums[i] == nums[i + 1]:
#                self.shiftToEnd(i, k, nums)
#                k -= 1
#            else:
#                i += 1
#        return k
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        n = len(nums)
        if n < 2:
            return n
        i = 0
        for j in range(1, n):
            if nums[j] != nums[i]:
                i += 1
                nums[i] = nums[j]
        return i + 1
```

Time Complexity: $$\Theta(n))$$ Commented: $$\Theta(n^2))$$
Space Complexity:  $$\Theta(1)$$

#easy 