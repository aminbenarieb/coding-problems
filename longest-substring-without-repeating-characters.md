Longest Substring Without Repeating Characters


### Solution
[[string]]
```python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        hash_map = {}
        max_str_len = 0
        start = 0
        for end in range(len(s)):
            right = s[end]
            if not right in hash_map:
                hash_map[right] = 0
            hash_map[right] += 1
            
            while hash_map[right] > 1:
                hash_map[s[start]] -= 1
                start += 1
            else:
                max_str_len = max(max_str_len, end - start + 1)
            
        return max_str_len
```

#medium 