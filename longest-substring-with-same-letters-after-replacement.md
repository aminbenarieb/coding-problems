Longest Substring with Same Letters after Replacement

### Solution
[[sliding-window]]

```python
def length_of_longest_substring(str, k):
  res = 0
  window_start = 0
  max_letter_freq = 0
  freq = {}
  for window_end in range(len(str)):
    end_c = str[window_end]
    if not end_c in freq:
      freq[end_c] = 0
    freq[end_c] += 1
    max_letter_freq = max(max_letter_freq, freq[end_c])
    window_len = window_end - window_start + 1
    if window_len - max_letter_freq > k:
      start_c = str[window_start]
      freq[start_c] -= 1
      window_start += 1
    res = max(res, window_len)
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

#hard