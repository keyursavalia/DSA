import Foundation

/// LC #242 - Valid Anagram
/// First Instinct: Two Dictionaries - 03/10/2026
/// Time: O(n) | Space: O(n)
/// took 11 ms and 19.72 MB

/// function will take:
///     string "s"
///     string "t"
///
/// function will return:
///     true if "t" is an anagram of "s", false otherwise
class Solution {
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var storage1: [Character: Int] = [:]
        var storage2: [Character: Int] = [:]
        
        for char in s {
            if storage1[char] == nil {
                storage1[char] = 1
            } else {
                storage1[char]! += 1
            }
        }
        
        for char in t {
            if storage2[char] == nil {
                storage2[char] = 1
            } else {
                storage2[char]! += 1
            }
        }
        
        if storage1 == storage2 {
            return true
        } else {
            return false
        }
    }
}
