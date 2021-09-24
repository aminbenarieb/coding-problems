class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = Array<Int>(repeating: 0, count: n*2)
        var i = 0
        var j = 0
        while j < n {
            result[i] = nums[j]
            result[i + 1] = nums[j + n]
            i += 2
            j += 1
       }
        return result
    }
}