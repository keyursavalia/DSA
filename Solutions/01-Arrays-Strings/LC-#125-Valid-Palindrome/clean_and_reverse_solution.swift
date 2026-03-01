import Foundation

/// LC #125 - Valid Palindrome
/// Approach 1: Clean + Reverse - 03/01/2026
/// Time: O(n) | Space: O(n)
/// took 186 ms and 21.79 MB

class Solution {

    /// function will take:
    ///     string "s" to check if palindrome
    ///
    /// function will return:
    ///     true if palindrome (after removing non-alphanumeric, ignoring case),
    ///     false otherwise
    func isPalindrome(_ s: String) -> Bool {

        let cleanedString = s
            .lowercased()
            .replacingOccurrences(of: "[^a-z0-9]", with: "", options: .regularExpression)

        let reversedString = String(cleanedString.reversed())

        return cleanedString == reversedString
    }
}
