Longest Common Prefix

### Solution
[WIP]
[[recursion]] [[sliding-window]] [[divide-and-conquer]] [[binary-search]]

```python
# class Solution(object):
#     def longestCommonPrefix(self, strs):
#         if len(strs) < 1:
#             return ""
#         prefix = strs[0]
#         for strs_idx in range(1, len(strs)):
#             while strs[strs_idx].find(prefix) != 0:
#                 prefix = prefix[0:len(prefix)-1]
#                 if len(prefix) == 0:
#                     return ""
#         return prefix
        
#         """
#         :type strs: List[str]
#         :rtype: str
#         """
class Solution(object):
    def longestCommonPrefix(self, strs):
        if len(strs) < 1:
            return ""
        return self._longestCommonPrefix(strs, 0, len(strs) - 1)
    def _longestCommonPrefix(self, strs, left_idx, right_idx):
        if left_idx == right_idx:
            return strs[left_idx]
        mid = int((left_idx + right_idx) / 2)
        left = self._longestCommonPrefix(strs, left_idx, mid)
        right = self._longestCommonPrefix(strs, mid + 1, right_idx)
        return self.commonPrefix(left, right)
    def commonPrefix(self, left, right):
        count = min(len(left), len(right))
        for idx in range(0, count):
            if left[idx] != right[idx]:
                return left[0: idx]
        return left[0:count]
```

#easy 