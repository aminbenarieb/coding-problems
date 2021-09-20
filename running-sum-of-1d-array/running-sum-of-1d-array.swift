class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var runningSum = Array<Int>(repeating:0, count: nums.count)
        for i in 0..<nums.count {
            runningSum[i] = nums[i] + runningSum[max(i - 1, 0)]
        }
        return runningSum
    }
}