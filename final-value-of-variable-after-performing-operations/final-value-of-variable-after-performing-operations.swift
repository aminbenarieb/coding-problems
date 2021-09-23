class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        return operations.reduce(0, { (r, o) in 
            r + (o[String.Index(encodedOffset:1)] == "+" ? 1 : -1)
        })
    }
}