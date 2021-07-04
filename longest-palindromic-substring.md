 Longest Palindromic Substring
 
 ### Solution
 
 ```python
 # slide window
    # window substring is palindrome
    # take max length
    # shrink window when is not palindrome until palindrome (one letter is always palindrome)
    # result: not good idea, we should iterate over all string to be sure
    
# brute force O(n^3): just iterate with inner loop and compare substring with it's reverse 
# class Solution:
#     def longestPalindrome(self, s: str) -> str:
#         assert(len(s) > 0)
#         max_start = 0
#         max_len = 0
#         for i in range(len(s)):
#             for j in range(i, len(s)):
#                 substr_len = j - i + 1
#                 substr = s[i:i + substr_len]
#                 if substr_len > max_len and substr == substr[::-1]:
#                     max_len_start = i
#                     max_len = substr_len
#         return s[max_len_start:max_len_start + max_len]

# expand around center attempt
# class Solution:
#     def longestPalindrome(self, s: str) -> str:
#         assert(len(s) > 0)
#         max_start = 0
#         max_len = 0
#         # for odd
#         for mid in range(len(s)):
#             for x in range(len(s)):
#                 lx = mid - x
#                 rx = mid + x
#                 if lx < 0 or rx >= len(s):
#                     break
#                 if s[lx] != s[rx]:
#                     break
#                 len_x = 2*x + 1
#                 if len_x > max_len:
#                     max_len = len_x
#                     mex_start = lx
#         # for even
#         for mid in range(len(s) - 1):
#             for x in range(len(s)):
#                 lx = mid - x + 1
#                 rx = mid + x
#                 if lx < 0 or rx >= len(s):
#                     break
#                 if s[lx] != s[rx]:
#                     break
#                 len_x = 2*x
#                 if len_x > max_len:
#                     max_len = len_x
#                     mex_start = lx
#         return s[max_start: max_start + max_len]

# expand around center attempt with help
class Solution:
    def longestPalindrome(self, s: str) -> str:
        assert(len(s) > 0)
        max_start = 0
        max_len = 0
        # for odd
        for mid in range(len(s)):
            for x in range(len(s)):
                lx = mid - x
                rx = mid + x
                if lx < 0 or rx >= len(s):
                    break
                if s[lx] != s[rx]:
                    break
                len_x = 2*x + 1
                if len_x > max_len:
                    max_len = len_x
                    mex_start = lx
        # for even
        for mid in range(len(s) - 1):
            for x in range(len(s)):
                lx = mid - x + 1
                rx = mid + x
                if lx < 0 or rx >= len(s):
                    break
                if s[lx] != s[rx]:
                    break
                len_x = 2*x
                if len_x > max_len:
                    max_len = len_x
                    mex_start = lx
        return s[max_start: max_start + max_len]
```

Time Complexity (brute force): $$\Theta(n^3))$$
Time Complexity (xpand around center): $$\Theta(n^2))$$
Space Complexity:  $$\Theta(1)$$