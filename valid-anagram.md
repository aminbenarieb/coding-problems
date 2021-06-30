Valid anagram

### Solution

[[hash-map]] [[sorting]]

```python
# class Solution:
#     def isAnagram(self, s: str, t: str) -> bool:
#         if len(s) != len(t):
#             return False
#         start = 0
#         hash_map = {}
#         matched = 0
#         for ss in s:
#             if not ss in hash_map:
#                 hash_map[ss] = 0
#             hash_map[ss] += 1
            
#         for tt in t:
#             if tt in hash_map:
#                 hash_map[tt] -= 1
#                 if hash_map[tt] == 0:
#                     matched += 1
        
#         return matched == len(hash_map)
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t): return False
        return sorted(s) == sorted(t)       
```

Time Complexity: $$\Theta(nlogN))$$
Space Complexity:  $$\Theta(1)$$

#easy 