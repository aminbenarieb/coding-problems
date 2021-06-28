Longest Subarray with Ones after Replacement

### Solution
[[sliding-window]]

```python
def length_of_longest_substring(arr, k):
  window_start = 0
  res = 0
  max_number_of_ones = 0
  for window_end in range(len(arr)):
    end_c = arr[window_end]
    if end_c == 1:
      max_number_of_ones += 1
    window_len = window_end - window_start + 1
    if window_len - max_number_of_ones > k:
      stat_c = arr[window_start]
      if stat_c == 1:
        max_number_of_ones -= 1
      window_start += 1
    res = max(res, window_len)
  return res

```

#hard 