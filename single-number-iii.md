Single Number III

### Solution
[[xor]]

```python

class Solution:
    def singleNumber(self, nums: List[int]) -> List[int]:
        n1xn2 = 0
        for num in nums:
            n1xn2 ^= num
        
        rightmostbit = 1
        while n1xn2 & rightmostbit == 0:
            rightmostbit <<= 1
            
        num1, num2 = 0,0
        for num in nums:
            if num & rightmostbit == 0:
                num1 ^= num
            else:
                num2 ^= num
        
        return [num1, num2]
		
```

Time Complexity: $$\Theta(n))$$
Space Complexity:  $$\Theta(1)$$

#medium 
