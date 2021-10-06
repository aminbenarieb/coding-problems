class Solution {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums[0] }
        //guard nums.count > 3 else { return 0 }
        return max(_rob(Array(nums[0..<nums.count-1])), _rob(Array(nums[1..<nums.count])))
    }
    func _rob(_ nums: [Int]) -> Int {
        var a = 0
        var b = nums[0]
        for i in 1..<nums.count {
            let temp = max(b, a + nums[i])
            a = b
            b = max(b, temp)
        }
        return b
    }
}