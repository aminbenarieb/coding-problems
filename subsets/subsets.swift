class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var sets = [[Int]()]
        for num in nums {
            var set_idx = 0
            for i in 0..<sets.count {
                sets.append(sets[set_idx] + [num])
                set_idx += 1
            }
        }
        return sets
    }
}