Merge Intervals

### Solution
[[merge-intervals]]

```python
class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        intervals_len = len(intervals)
        if intervals_len < 2:
            return intervals
        intervals.sort(key=lambda x: x[0])
        start = intervals[0][0]
        end = intervals[0][1]
        merged = []
        for idx in range(1, intervals_len):
            interval = intervals[idx]
            if intervals[idx][0] <= end:
                end = max(end, interval[1])
            else:
                merged.append([start, end])
                start = interval[0]
                end = interval[1]
                
        merged.append([start, end])
                
        return merged
```


Time Complexity: $$\Theta(NlogN)$$
Space Complexity:  $$\Theta(N)$$

#medium 