
class SparseVector {
    
    let numsDictionary: [Int: Int]
    
    init(_ nums: [Int]) {
        var numsDictionary = [Int: Int]()
        for idx in 0..<nums.count {
            if nums[idx] != 0 {
                numsDictionary[idx] = nums[idx]
            }
        }
        self.numsDictionary = numsDictionary
    }

    // Return the dotProduct of two sparse vectors
    func dotProduct(_ vec: SparseVector) -> Int {
        var result = 0
        for (key, element) in vec.numsDictionary {
            result += (numsDictionary[key] ?? 0) * element
        }
        return result
    }
}

/**
 * Your SparseVector object will be instantiated and called as such:
 * let v1 = SparseVector(nums1)
 * let v2 = SparseVector(nums2)
 * let ans = v1.dotProduct(v2)
*/