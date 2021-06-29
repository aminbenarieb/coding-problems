Two Soum

### Solution
[[two-pointers]] [[hash-map]]

```python
# Brute-force
# class Solution:
#     def twoSum(self, nums: List[int], target: int) -> List[int]:
#         for idx in range(len(nums)):
#             for jdx in range(idx + 1, len(nums)):
#                 current_number = nums[idx]
#                 next_number = nums[jdx]
#                 if current_number + next_number == target:
#                     return [idx, jdx]
#         return []
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hash_map = {} # {number:idx}
        for idx, num in enumerate(nums):
            substr = target - num
            if substr in hash_map:
                return [hash_map[substr], idx]
            hash_map[num] = idx
        return []
```