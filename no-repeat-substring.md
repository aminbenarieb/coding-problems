No-repeat Substring


### Solution
[[sliding-window]]
```python
# def non_repeat_substring(str1):
#   window_start = 0
#   res = 0
#   freq_set = {}
#   for window_end in range(len(str1)):
#     end_c = str1[window_end]
#     if not end_c in freq_set:
#         freq_set[end_c] = 0
#     freq_set[end_c] += 1
#     while freq_set[end_c] > 1:
#       start_c = str1[window_start]
#       freq_set[start_c] -= 1
#       if freq_set[start_c] == 0:
#         del freq_set[start_c]
#       window_start += 1
#     res = max(res, window_end - window_start + 1)
#   return res
def non_repeat_substring(str1):
  window_start = 0
  res = 0
  freq_set = {}
  for window_end in range(len(str1)):
    window_end_c = str1[window_end]
    if window_end_c in freq_set:
      idx = freq_set[window_end_c]
      window_start = max(window_start, idx + 1)
      del freq_set[window_end_c]
    freq_set[window_end_c] = window_end
    res = max(res, window_end - window_start + 1)
  return res

```

Time Complexity: $$\Theta(N)$$ 
Space Complexity:  $$\Theta(K)$$  K is number of distinct characters, K <= N. For fixed number of set the compexity would be O(1).

#hard