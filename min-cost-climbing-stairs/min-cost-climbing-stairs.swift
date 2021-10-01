// class Solution {
//     func minCostClimbingStairs(_ costs: [Int]) -> Int {
//         var result = 0
//         var i = 0
//         while i < costs.count - 1 {
//             let cost3 = i + 2 < costs.count ? costs[i + 2] : 0
//             if costs[i + 1] == 0 || (costs[i] != 0 && costs[i + 1] != cost3 && costs[i] + cost3 >= costs[i + 1]) { 
//                 result += costs[i + 1]
//                 i += 2
//             }
//             else {
//                 result += costs[i]
//                 i += 1
//             }
//         }
//         return result
//     }
// }
// 
class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var results = Array(repeating: 0, count: cost.count)
        results[0] = cost[0]
        results[1] = cost[1]
        for i in 2..<cost.count {
            results[i] = min(cost[i] + results[i-1], cost[i] + results[i-2])
        }
        return min(results[results.count - 1], results[results.count - 2])
    }
}