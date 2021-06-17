Smallest Subarray with a given sum

### Question
Given an array of positive numbers and a positive number ‘S,’ find the length of the **smallest contiguous subarray whose sum is greater than or equal to ‘S’**. Return 0 if no such subarray exists.

**Example 1:**

```
Input: [2, 1, 5, 2, 3, 2], S=7 Output: 2Explanation: The smallest subarray with a sum greater than or equal to '7' is [5, 2].
```

**Example 2:**

```
Input: [2, 1, 5, 2, 8], S=7 Output: 1Explanation: The smallest subarray with a sum greater than or equal to '7' is [8].
```

**Example 3:**

```
Input: [3, 4, 1, 1, 6], S=8 Output: 3Explanation: Smallest subarrays with a sum greater than or equal to '8' are [3, 4, 1] or [1, 1, 6].
```

### Solution

```python
def smallest_subarray_with_given_sum(s, arr):
  window_sum = 0
  min_length = 0
  window_start = 0

  for window_end in range(0, len(arr)):
    window_sum += arr[window_end]  # add the next element
    # shrink the window as small as possible until the 'window_sum' is smaller than 's'
    while window_sum >= s:
      length = window_end - window_start + 1
      min_length = min(min_length, length) if min_length != 0 else length
      window_sum -= arr[window_start]
      window_start += 1
  if min_length == math.inf:
    return 0
  return min_length


def main():
  print("Smallest subarray length: " + str(smallest_subarray_with_given_sum(7, [2, 1, 5, 2, 3, 2])))
  print("Smallest subarray length: " + str(smallest_subarray_with_given_sum(7, [2, 1, 5, 2, 8])))
  print("Smallest subarray length: " + str(smallest_subarray_with_given_sum(8, [3, 4, 1, 1, 6])))


main()
```

Time Complexity: $$\Theta(n)$$
Space Complexity:  $$\Theta(1)$$

#sliding-window #easy