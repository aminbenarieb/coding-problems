Longest Substring with K Distinct Characters

### Solution
 [[hash-map]] [[sliding-window]]
```python
def longest_substring_with_k_distinct(str1, k):
  chrs_freq = {}
  res = 0
  window_start = 0
  for window_end in range(len(str1)):
    c = str1[window_end]
    if not c in chrs_freq:
      chrs_freq[c] = 0
    chrs_freq[c] += 1
    while len(chrs_freq) > k:
      start_c = str1[window_start]
      chrs_freq[start_c] -= 1
      if chrs_freq[start_c] == 0:
        del chrs_freq[start_c]
      window_start += 1
    res = max(res, window_end - window_start + 1)
  return res
  
from collections import Counter
class Solution:
    def characterReplacement(self, s: str, k: int) -> int:
        hash_map = Counter()
        start, max_repeating_count = 0, 0
        for end, end_c in enumerate(s):
            hash_map[end_c] += 1
            
            max_repeating_count = max(max_repeating_count, hash_map[end_c])
            
            if end - start + 1 - max_repeating_count > k:
                hash_map[s[start]] -= 1
                start += 1
            
        return end - start + 1
  
```


Time Complexity: $$\Theta(N)$$ in detail O(N + N), because for could have N max iteration for inner loop but only once.
Space Complexity:  $$\Theta(K)$$

#medium