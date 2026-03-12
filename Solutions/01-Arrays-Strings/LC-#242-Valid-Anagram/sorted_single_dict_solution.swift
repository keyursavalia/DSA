import Foundation

/// LC #242 - Valid Anagram
/// Sorted + Single Dict - 03/10/2026
/// Time: O(n log n) from sort | Space: O(n)
/// took 26 ms and 20.91 MB

class Solution {
    /// function will take:
    ///     string "s"
    ///     string "t"
    ///
    /// function will return:
    ///     true if "t" is an anagram of "s", false otherwise
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }

        var string1: [Character] = s.sorted()       // takes O(log n)
        var string2: [Character] = t.sorted()       // takes O(log n)
        var storage: [Character: Int] = [:]
        
        for char in string1 {                       // takes O(n)
            storage[char, default: 0] += 1
        }

        for char in string2 {                       // takes O(n)
            guard var count = storage[char], count > 0 else {
                return false
            }
            storage[char] = count - 1
        }
        
        return true
    }
}
