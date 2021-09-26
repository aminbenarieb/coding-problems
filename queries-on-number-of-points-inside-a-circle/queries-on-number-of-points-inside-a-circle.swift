import Foundation

class Solution {
    func countPoints(_ points: [[Int]], _ queries: [[Int]]) -> [Int] {
        queries.map { q in
            // $0[0] // x
            // $0[1] // y
            // $0[2] // r
            return points.reduce(0, { (r, p) in
                let dx = (q[0] - p[0]);
                let dy = (q[1] - p[1]);
                return r + (sqrt(Double(dx*dx + dy*dy)) > Double(q[2]) ? 0 : 1)
            })
        }
    }
}