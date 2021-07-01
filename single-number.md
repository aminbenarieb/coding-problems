Single number

### Solution
[[xor]] [[array]]
```python
# class Solution:
#     def singleNumber(self, nums: List[int]) -> int:
#         nums.sort()
#         for i in range(0, len(nums) - 1, 2):
#             if nums[i] != nums[i + 1]:
#                 return nums[i]
#         return nums[len(nums) - 1]
    
class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        a = 0
        for num in nums:
            a ^= num
        return a
```

Time Complexity: $$\Theta(nlog_n))$$
Time Complexity: $$\Theta(n))$$
Space Complexity (In-place sort):  $$\Theta(1)$$
Space Complexity (XOR):  $$\Theta(1)$$

#easy 