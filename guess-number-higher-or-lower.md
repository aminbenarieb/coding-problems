 Guess Number Higher or Lower
 
 
### Solution

[[binary-search]]

```python
# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num: int) -> int:

class Solution:
    def guessNumber(self, n: int) -> int:
        low = 0
        high = n
        
        while True:
            mid = (high + low) >> 1
            result = guess(mid)
            if result == 0:
                return mid
            elif result > 0:
                low = mid + 1 
            else:
                high = mid - 1
        
        return -1
            
```

#easy