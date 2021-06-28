String Anagrams

Given a string and a pattern, find all anagrams of the pattern in the given string.

### Solution 
[[sliding-window]] [[hash-map]]

Same as in [[permutation-in-a-string]] but instead of return when we find first or another permutation we would just add window start index to an array.

Time Complexity: $$\Theta(N + M)$$ N = len(str), M = len(pattern)
Space Complexity:  $$\Theta(N + M)$$since in the worst case, the whole pattern can have distinct characters which will go into the **HashMap**. In the worst case, we also need O(N)O(N) space for the result list, this will happen when the pattern has only one character and the string contains only that character.

#hard 