class Solution {
    func minPartitions(_ n: String) -> Int {
        Int(String(n.sorted(by: >)[0]))!
    }
}