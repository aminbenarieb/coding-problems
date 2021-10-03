// class Solution {
//     func rob(_ nums: [Int]) -> Int {
//         var even = 0
//         var odd = 0
//         for i in 0..<nums.count {
//             if i % 2 == 0 {
//                 even += nums[i]   
//             }
//             else {
//                 odd += nums[i]   
//             }
//         }
//         return max(even, odd)
//     }
// }
// class Solution {
//     func rob(_ nums: [Int]) -> Int {
//         if nums.count < 2 {
//             return nums[0]
//         }
//         if nums.count < 3 {
//             return max(nums[0], nums[1])
//         }
//         return max(nums[0] + rob(Array(nums[2..<nums.count])), rob(Array(nums[1..<nums.count])))
//     }
// }
// class Solution {
//     var history = [Int]()
//     func rob(_ nums: [Int]) -> Int {
//         var dp = Array<Int>(repeating: 0, count:nums.count + 1)
//         dp[0] = 0
//         dp[1] = nums[0]
//         for i in 1..<nums.count {
//             dp[i + 1] = max(dp[i], dp[i - 1] + nums[i])
//         }
//         return dp[nums.count]
//     }
// }

class Solution {
    var history = [Int]()
    func rob(_ nums: [Int]) -> Int {
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


/// [0],4,1,1,4
