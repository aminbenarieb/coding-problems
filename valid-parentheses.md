Valid Parentheses

### Solution
[[stack]]

```python
# class Solution:
#     def isValid(self, s: str) -> bool:
#         if len(s) < 2:
#             return False
#         brackets_set = {"{": "}", "(" : ")", "[":"]"}
#         stack = []
#         for c in s:
#             if c in brackets_set:
#                 stack.append(c)
#             elif len(stack) > 0:
#                 top = stack[len(stack) - 1]
#                 if c == brackets_set[top]:
#                     stack.pop()
#                 else:
#                     return False
#             else:
#                 return False
#         return len(stack) == 0

class Solution:
    def isValid(self, s: str) -> bool:
        if len(s) < 2:
            return False
        stack = []
        for c in s:
            if c == "{" or c == "(" or c == "[":
                stack.append(c)
            elif len(stack) > 0:
                top = stack[len(stack) - 1]
                if (c == "}" and top == "{") or (c == ")" and top == "(") or (c == "]" and top == "["):
                    stack.pop()
                else:
                    return False
            else:
                return False
        return len(stack) == 0

# class Solution:
#     def isValid(self, s: str) -> bool:
#         if len(s) < 2:
#             return False
#         a1 = 0
#         a2 = 0
#         a3 = 0
#         prev = ""
#         for c in s:
#             if c == "{":
#                 a1 += 1
#             elif c == "(":
#                 a2 += 1
#             elif c == "[":
#                 a3 += 1
#             elif c == "}" and prev == "{":
#                 a1 -= 1
#             elif c == ")" and prev == "(":
#                 a2 -= 1
#             elif c == "]" and prev == "[":
#                 a3 -= 1
#             else:
#                 return False
#             prev = c
#         return a1 == a2 == a3 == 0
```

Time Complexity: $$\Theta(n))$$
Space Complexity:  $$\Theta(n)$$

#easy 