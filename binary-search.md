Binary search


### Solution
[[binary-search]]

```python
class Solution:
    def search(self, nums: List[int], target: int) -> int:
        low = 0
        high = len(nums) - 1
        if high == 0: return 0 if target == nums[0] else -1
        while low <= high:
            mid = (high + low) // 2
            guess = nums[mid]
            if guess == target:
                return mid
            elif guess > target:
                high = mid - 1
            else:
                low = mid + 1
        return -1        
       
```

#easy 