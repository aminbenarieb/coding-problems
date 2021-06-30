Missing Number


### Solution

[[cyclic-sort]] [[xor]]

```python
# class Solution:
#     def missingNumber(self, nums: List[int]) -> int:
#         start = 0
#         nums_len = len(nums)
#         while start < nums_len:
#             num = nums[start]
#             if num < nums_len and num != start:
#                 nums[num], nums[start] = num , nums[num], 
#             else:
#                 start += 1
        
#         for idx in range(nums_len):
#             if nums[idx] != idx:
#                 return idx
        
#         return nums_len
    
# 4, 0, 3, 1
# 4 == nums_len -> skip 4, start = 1
# 0 < nums_len and 0 != 1 -> nums[0] = 0, nums[1] = 4: 0, 4, 3, 1
# 4 == nums_len -> skip 4, start = 2
# 0 < nums_len and 3 != 2 -> nums[3] = 3, nums[2] = 1: 0, 4, 1, 3
# 1 < nums_len and 1 != 3 -> nums[1] = 1, nums[3] = 4: 0, 1, 4, 3
# 4 == nums_len -> skip 4, start = 3
# 3 < nums_len and 3 == 3-> skip 3, start = 4, stop 


# XOR
# class Solution:
#     def missingNumber(self, nums: List[int]) -> int:
#         missing = len(nums)
#         for idx, num in enumerate(nums):
#             missing ^= idx ^ num
#         return missing        
# 4, 0, 3, 1
# (4 ^ 0 ^ 4) ^ (1 ^ 0) ^ (2 ^ 3) ^ (3 ^ 1)


# Gauss' sum
class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        n = len(nums)
        gaus_sum = n*(n + 1) // 2
        total = sum(nums)
        return gaus_sum - total
```

#easy 