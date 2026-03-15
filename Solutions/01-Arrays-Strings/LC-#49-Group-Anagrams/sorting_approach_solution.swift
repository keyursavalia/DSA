import Foundation

/// LC #49 - Group Anagrams
/// Sorting Approach - 03/15/2026
/// Time: O(n * k log k) | Space: O(n * k)
/// took 7 ms and 21.21 MB

class Solution {

    /// function will take:
    ///     array "strs" of type [String]
    ///
    /// function will return:
    ///     array of grouped anagrams [[String]]
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var storage: [String: [String]] = [:]
        for string in strs {
            let sorted = String(string.sorted())
            storage[sorted, default: []].append(string)
        }
        return Array(storage.values)
    }
}
