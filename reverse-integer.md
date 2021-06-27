Reverse integer

### Question

Given a signed 32-bit integer `x`, return `x` _with its digits reversed_. If reversing `x` causes the value to go outside the signed 32-bit integer range `[-231, 231 - 1]`, then return `0`.

**Assume the environment does not allow you to store 64-bit integers (signed or unsigned).**

**Example 1:**

**Input:** x = 123
**Output:** 321

**Example 2:**

**Input:** x = -123
**Output:** -321

**Example 3:**

**Input:** x = 120
**Output:** 21

**Example 4:**

**Input:** x = 0
**Output:** 0

**Constraints:**

-   `-231 <= x <= 231 - 1`

### Solution

[[overflow]] [[stack]]

```python

from math import pow

class Solution:
    def mod(self, x, base):
        return x - int(x/base) * base
    def reverse(self, x: int) -> int:
        max_int = pow(2, 31) - 1 
        max_int_divided_by_ten = max_int / 10
        min_int_divided_by_ten = ((max_int * (-1)) - 1) / 10
        result = 0
        while x != 0:
            pop = self.mod(x, 10)
            x = int(x / 10)
            if (result > max_int_divided_by_ten) or (result == max_int_divided_by_ten and pop > 7):
                return 0
            if (result < min_int_divided_by_ten) or (result == min_int_divided_by_ten and pop < -8):
                return 0
            result = result * 10 + pop
        return result
```

Time Complexity: $$\Theta(\log_{10} n))$$
Space Complexity:  $$\Theta(1)$$

#easy 

