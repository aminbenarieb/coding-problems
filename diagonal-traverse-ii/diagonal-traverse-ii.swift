struct Item {
    var sum: Int
    var row: Int
    var val: Int
}

class Solution {
    func findDiagonalOrder(_ nums: [[Int]]) -> [Int] {
        var items = [Item]()
        for row in 0..<nums.count {
            for col in 0..<nums[row].count {
                items.append(.init(sum: row+col, row:row, val: nums[row][col]))
            }
        }
        items.sort { 
            if $0.sum == $1.sum {
                return $0.row > $1.row
            }
            return $0.sum < $1.sum
        }
        return items.map { $0.val }
    }
}