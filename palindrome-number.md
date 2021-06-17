Palindrome number

### Question

Given an integer `x`, return `true` if `x` is [[palindrome]] integer.

An integer is a **palindrome** when it reads the same backward as forward. For example, `121` is palindrome while `123` is not.

**Example 1:**

**Input:** x = 121
**Output:** true

**Example 2:**

**Input:** x = -121
**Output:** false
**Explanation:** From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

**Example 3:**

**Input:** x = 10
**Output:** false
**Explanation:** Reads 01 from right to left. Therefore it is not a palindrome.

**Example 4:**

**Input:** x = -101
**Output:** false

**Constraints:**

-   `-231 <= x <= 231 - 1`

**Follow up:** Could you solve it without converting the integer to a string?

### Solution

```python
#class Solution:
#    def isPalindrome(self, x: int) -> bool:
#        if x < 0:
#            return False
#        string = str(x)
#        left = 0
#        right = len(string) - 1
#        while left < right:
#            if string[left] != string[right]:
#                return False
#            right -= 1
#            left += 1
#        return True

#class Solution:
#    def isPalindrome(self, x: int) -> bool:
#        digits = []
#        while x != 0:
#            digits.append(x % 10)
#            x = int(x / 10)

#class Solution:
#     def isPalindrome(self, x: int) -> bool:
#         if x < 0:
#             return False
#         reversed_x = 0
#         temp_x = x
#         while temp_x != 0:
#             # Check overflow
#             reversed_x = reversed_x * 10 + temp_x % 10
#             temp_x = int(temp_x / 10)
#         while x != 0:
#             if x % 10 != reversed_x % 10:
#                 return False
#             reversed_x = int(reversed_x / 10)
#             x = int(x / 10)
#         return True

class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0 or (x % 10 == 0 and x != 0):
            return False
        reversed_x = 0
        while x > reversed_x:
            reversed_x = reversed_x * 10 + x % 10
            x = int(x / 10)
        return x == reversed_x or x == int(reversed_x / 10)
```

#easy