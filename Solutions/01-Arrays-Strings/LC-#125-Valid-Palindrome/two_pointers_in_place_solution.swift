import Foundation

/// LC #125 - Valid Palindrome
/// Approach 3: Two Pointers (In-place, Skip Non-alphanumeric) - 03/01/2026
/// Time: O(n) | Space: O(1)
/// took 7 ms and 20.59 MB

class Solution {

    /// function will take:
    ///     string "s" to check if palindrome
    ///
    /// function will return:
    ///     true if palindrome (after removing non-alphanumeric, ignoring case),
    ///     false otherwise
    func isPalindrome(_ s: String) -> Bool {

        let chars = Array(s.lowercased())                                           /// no cleaning, just lowercasing everything
        var leftPointer: Int = 0
        var rightPointer: Int = chars.count - 1

        while leftPointer < rightPointer {

            if !chars[leftPointer].isLetter && !chars[leftPointer].isNumber {       /// ignore if not a letter or number
                leftPointer += 1                                                    /// and move onto next
                continue
            }

            if !chars[rightPointer].isLetter && !chars[rightPointer].isNumber {     /// ignore if not a letter or number
                rightPointer -= 1                                                   /// and move onto next
                continue
            }

            if chars[leftPointer] != chars[rightPointer] {                          /// return from first mis-match
                return false
            }

            leftPointer += 1
            rightPointer -= 1
        }

        return true
    }
}
