class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        let m = accounts.count
        let n = accounts[0].count
        var maxAmount = 0
        for i in 0..<m {
            var amount = 0
            for j in 0..<n {
                amount += accounts[i][j]
            }
            if amount > maxAmount {
                maxAmount = amount
            }
        }
        return maxAmount
    }
}