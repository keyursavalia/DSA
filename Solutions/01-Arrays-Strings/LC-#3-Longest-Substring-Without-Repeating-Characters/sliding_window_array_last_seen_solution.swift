import Foundation

/// LC #3 - Longest Substring Without Repeating Characters
/// Sliding Window + Last-Seen Index (Array) Approach - 03/08/2026
/// Time: O(n) | Space: O(1)
/// took 0 ms and 19.95 MB

class Solution {
    
    /// function will take:
    ///     string "s"
    ///
    /// function will return:
    ///     length of the longest substring without repeating characters
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let chars = Array(s)
        var lastSeen = Array(repeating: -1, count: 128)   // ASCII size
        var left = 0
        var maxLength = 0
        
        for right in 0..<chars.count {
            let ascii = Int(chars[right].asciiValue ?? 0)
            
            // if character seen inside current window, move left pointer
            if lastSeen[ascii] >= left {
                left = lastSeen[ascii] + 1
            }
            
            lastSeen[ascii] = right
            maxLength = max(maxLength, right - left + 1)
        }
        
        return maxLength
    }
}

