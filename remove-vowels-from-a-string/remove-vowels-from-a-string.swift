class Solution {
    func removeVowels(_ s: String) -> String {
        let vowels = ["a", "e", "i", "o", "u"] as [Character]
        return s.filter { vowels.contains($0) == false }
    }
}