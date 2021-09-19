class Solution {
    func minProductSum(_ nums1: [Int], _ nums2: [Int]) -> Int {
        assert(nums1.count == nums2.count)
        let sortedNums1 = nums1.sorted(by: <)
        let sortedNums2 = nums2.sorted(by: >)
        var product = 0
        for i in 0..<sortedNums1.count {
            product += sortedNums1[i] * sortedNums2[i]
        }
        return product
    }
}