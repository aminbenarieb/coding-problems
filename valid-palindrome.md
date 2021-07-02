 Valid Palindrome
 
 ### Solution
 
 [[string]] [[two-pointers]]
 
 ```python
 # class Solution:
#     def isPalindrome(self, s: str) -> bool:
#         normalized_s = ""
#         for ss in s: 
#             if ss.isalnum():
#                 normalized_s += ss.lower()
#         i = 0
#         j = len(normalized_s) - 1
#         while i < j:
#             if normalized_s[i] != normalized_s[j]:
#                 return False
#             i += 1
#             j -= 1
#         return True
class Solution:
    def isPalindrome(self, s: str) -> bool:
        normalized_s = ""
        for ss in s: 
            if ss.isalnum():
                normalized_s += ss.lower()
        return normalized_s == normalized_s[::-1]
 ```
 
 
Time Complexity: $$\Theta(n))$$
Space Complexity (two pointers):  $$\Theta(1)$$
Space Complexity:  $$\Theta(n)$$