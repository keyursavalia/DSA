import Foundation

/// LC #242 - Valid Anagram
/// Helper Refactored (Early Exit) - 03/10/2026
/// Time: O(n) | Space: O(n)
/// took 12 ms and 19.45 MB

/// function will take:
///     string "s"
///     string "t"
///
/// function will return:
///     true if "t" is an anagram of "s", false otherwise
class Solution {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        
        var storage1: [Character: Int] = helperStringParser(s)
        var storage2: [Character: Int] = helperStringParser(t)
        
        return storage1 == storage2
    }
}

func helperStringParser(_ string: String) -> [Character: Int] {
    var storage: [Character: Int] = [:]
    for char in string {
        storage[char, default: 0] += 1
    }
    return storage
}
