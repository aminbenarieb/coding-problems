class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        // var result = [Int](repeating: 0, count: nums.count)
        // for idx in 0..<nums.count {
        //     result[idx] = nums[nums[idx]]
        // }
        // return result
        return nums.map { nums[$0] }
        // return nums.enumerated().map { idx, _ in nums[nums[idx]] }
    }
}