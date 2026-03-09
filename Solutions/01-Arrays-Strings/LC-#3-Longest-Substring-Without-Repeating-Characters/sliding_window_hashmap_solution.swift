import Foundation

/// LC #3 - Longest Substring Without Repeating Characters
/// Sliding Window + HashMap Approach - 03/08/2026
/// Time: O(n) | Space: O(min(n, k)) where k is charset size
/// took 8 ms and 19.73 MB

class Solution {
    
    /// function will take:
    ///     string "s"
    ///
    /// function will return:
    ///     length of the longest substring without repeating characters
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let chars = Array(s)
        var left: Int = 0
        var hashMap = [Character: Int]()                  // stores last index for each character
        var length: Int = 0
        
        for right in 0..<chars.count {
            let char = chars[right]
            
            if let previouslySeen = hashMap[char] {
                left = max(left, previouslySeen + 1)
            }
            
            hashMap[char] = right
            length = max(length, right - left + 1)
        }
        
        return length
    }
}

