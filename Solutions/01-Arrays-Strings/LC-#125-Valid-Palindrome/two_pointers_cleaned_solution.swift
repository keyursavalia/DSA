import Foundation

/// LC #125 - Valid Palindrome
/// Approach 2: Two Pointers (Pre-cleaned Array) - 03/01/2026
/// Time: O(n) | Space: O(n)
/// took 172 ms and 21.78 MB

class Solution {

    /// function will take:
    ///     string "s" to check if palindrome
    ///
    /// function will return:
    ///     true if palindrome (after removing non-alphanumeric, ignoring case),
    ///     false otherwise
    func isPalindrome(_ s: String) -> Bool {

        let chars = Array(
            s.lowercased()
                .replacingOccurrences(of: "[^a-z0-9]", with: "", options: .regularExpression)
        )

        var leftPointer: Int = 0
        var rightPointer: Int = chars.count - 1

        while leftPointer < rightPointer {
            if chars[leftPointer] != chars[rightPointer] {
                return false
            }
            leftPointer += 1
            rightPointer -= 1
        }

        return true
    }
}
