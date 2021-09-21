class Solution {
    func defangIPaddr(_ address: String) -> String {
        return address.reduce("", { (result, character) in
            let chr = String(character)
            var result = result
            result += (chr == ".") ? "[\(chr)]" : chr
            return result
        })
    }
}