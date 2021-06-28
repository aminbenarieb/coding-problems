Permutation in a String

### Solution
[[sliding-window]] [[hash-map]]
```python
def find_permutation(str, pattern):
  matched = 0
  window_start = 0
  freq = {}
  for p in pattern:
    if not p in freq:
      freq[p] = 0
    freq[p] += 1
  for window_end in range(len(str)):
    window_end_c = str[window_end]
    if window_end_c in freq:
      freq[window_end_c] -= 1
      matched += 1
    if matched == len(pattern):
      return True
    if window_end - window_start + 1 == len(pattern):
      window_start_c = str[window_start]
      if window_start_c in freq:
        freq[window_start_c] += 1
        matched -= 1
      window_start += 1
  return False

```

Time Complexity: $$\Theta(N+K))$$ N = len(str), K = len(pattern)
Space Complexity:  $$\Theta(K)$$

#hard