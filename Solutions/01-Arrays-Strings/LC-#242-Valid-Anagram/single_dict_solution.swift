import Foundation

/// LC #242 - Valid Anagram
/// Single Dict Approach - 03/10/2026
/// Time: O(n) | Space: O(1) [or O(k) for character set size]
/// took 15 ms and 20.72 MB

/// function will take:
///     string "s"
///     string "t"
///
/// function will return:
///     true if "t" is an anagram of "s", false otherwise
class Solution {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }

        var storage: [Character: Int] = [:]
        
        // increment the count of each character in "s"
        for char in s {
            storage[char, default: 0] += 1
        }

        // decrement the count of each character in "t"
        for char in t {
            // if the character is not in "s", return false
            guard let count = storage[char], count > 0 else {
                return false
            }
            // decrement the count of the character
            storage[char] = count - 1
        }
        
        return true
    }
}
