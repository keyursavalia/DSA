import Foundation

/// LC #242 - Valid Anagram
/// 1st Optimization: Helper with default - 03/10/2026
/// Time: O(n) | Space: O(n)
/// took 8 ms and 19.92 MB

/// function will take:
///     string "s"
///     string "t"
///
/// function will return:
///     true if "t" is an anagram of "s", false otherwise
class Solution {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
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
