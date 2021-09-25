struct Item {
    let sum: Int
    let col: Int
    let val: Int
}

class Solution {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        var items = [Item]()
        for row in 0..<mat.count {
            for col in 0..<mat[row].count {
                items.append(.init(sum: row + col, col: col, val: mat[row][col]))
            }
        }
        items.sort {
            if $0.sum == $1.sum {
                return $0.sum % 2 == 0 ? $0.col < $1.col : $0.col > $1.col
            }
            return $0.sum < $1.sum
        }
        return items.map { $0.val }
    }
}