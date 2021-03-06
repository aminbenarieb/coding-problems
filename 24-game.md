24 game.

### Question:
The `24` game is played as follows. You are given a list of four integers, each between `1` and `9`, in a fixed order. By placing the operators `+`, `-`, `*`, and `/` between the numbers, and grouping them with parentheses, determine whether it is possible to reach the value `24`.

For example, given the input `[5, 2, 7, 8]`, you should return `True`, since `(5 * 2 - 7) * 8 = 24`.

Write a function that plays the `24` game.


### Solution:
- [[backtracking]] approach
- [[equation]]
- [[parentheses]] [[recursively]]
[`+`, `-`, `*`, `/`]
arr


```python
def apply_ops(a, b):
    return [a + b, a - b, a * b, a / b]

def play(nums):
    if len(nums) == 1:
        return nums[0] == 24
    elif len(nums) == 2:
        return any(play([x]) for x in apply_ops(*nums))
    else:
        for i in range(len(nums) - 2):
            for x in apply_ops(*nums[i : i + 2]):
                if play(nums[:i] + [x] + nums[i + 2:]):
                    return True
        return False
```

#easy #twitter