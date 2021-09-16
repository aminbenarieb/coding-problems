class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        return nums.enumerated().map { idx, _ in nums[nums[idx]] }
    }
}