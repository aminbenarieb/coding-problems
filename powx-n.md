Pow(x, n)

### Solution

[[divide-and-conquer]]

```python
# a^n = a^(n/2+n/2) => for even (a^n/2)^2, for odd: a * (a^n/2)^2
class Solution:
    def myPow(self, a: float, n: int) -> float:
        r = self._myPow(a, n)
        if n < 0 and abs(r) > 1:
            r = 1 / r
        elif n < 0 and abs(r) < 1:
            r = 1 / r
        return r
    def _myPow(self, a: float, n: int) -> float:
        if n == 0: return 1
        x = self._myPow(a, int((float(n) / 2)))
        if n % 2 == 0:
            return x*x
        else:
            return a*x*x


# more elegant solution https://leetcode.com/problems/powx-n/discuss/1087779/Simple-recursion-in-Python
class Solution:
    def myPow(self, x, n):
        
        if x == 0:
            return 0
        if n == 0 or x == 1:
            return 1
        if n == 1:
            return x
        if n == -1:
            return 1/x
        
        if n % 2 == 0:
            return self.myPow(x, n//2) ** 2
        else:
            return self.myPow(x, n//2) * self.myPow(x, (n//2) + 1)
			
```



#math #medium 