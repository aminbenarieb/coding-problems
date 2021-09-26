class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let max = candies.max() else { return [Bool]() }
        return candies.map { $0 + extraCandies >= max }
    }
}