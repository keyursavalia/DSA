import Foundation

/// LC #49 - Group Anagrams
/// Counting Approach - 03/15/2026
/// Time: O(n * k) | Space: O(n * k)
/// took 12 ms and 23.48 MB

class Solution {

    /// function will take:
    ///     array "strs" of type [String]
    ///
    /// function will return:
    ///     array of grouped anagrams [[String]]
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // Key: [Int] - array of 26 counts (one for each letter a-z)
        var storage: [[Int]: [String]] = [:]
        // ASCII value of 'a' (97) to use as our 'zero' index.
        let asciiA = Character("a").asciiValue!             // '!' is safe here because we know 'a' is a standard ASCII character.

        for string in strs {
            var counts = Array(repeating: 0, count: 26)    // Index 0 = 'a', Index 1 = 'b', ..., Index 25 = 'z'
            for char in string {
                if let asciiValue = char.asciiValue {
                    counts[Int(asciiValue - asciiA)] += 1  // Mapping: (99 - 97) = 2. So, increment index 2.
                }
            }
            storage[counts, default: []].append(string)    // Swift can do this because Array<Int> is Hashable.
        }

        return Array(storage.values)
    }
}
