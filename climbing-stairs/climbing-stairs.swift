class Solution {
    private var historyDictionary = [1: 1, 2: 2, 3: 3]
    func climbStairs(_ n: Int) -> Int {
        if let h = historyDictionary[n] { return h }
        let result = climbStairs(n - 1) + climbStairs(n - 2)
        historyDictionary[n] = result
        return result
    }
}


// 4
// 1. 1 step + 1 step + 1 step + 1 step
// 2. 1 step + 2 steps + 1 step
// 3. 2 steps + 1 step + 2 steps
// 4. 2 steps + 2 steps
// 5. 1 step + 1 step + 2 steps

// 2
// 3
// 5
// 8
// 13