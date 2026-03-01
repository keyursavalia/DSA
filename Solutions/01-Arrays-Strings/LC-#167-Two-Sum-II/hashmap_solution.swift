import Foundation

/// LC #167 - Two Sum II
/// Optimized Approach using HashMap - 02/28/2026
/// Time: O(n) | Space: O(n)

class Solution {
    
    /// function will take:
    ///     array "numbers" of type Int
    ///     target value of type Int
    ///
    /// function will return:
    ///     array of type Int (2 indexes) if solution found,
    ///     else an empty array
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var dict: [Int: Int] = [:]                      // initialize empty dictionary (hash-map)
        /// dict will have:
        ///     element of the array = "key"
        ///     index of the element = "value"
        
        for i in 0..<numbers.count {
            // get "2nd-key" by subtracting "current-key" from target
            let complement = target - numbers[i]
            // "2nd-key" exists in dict ? store it's value (index) in j : continue
            if let j = dict[complement] {
                return [j+1, i+1]
            }
            dict[numbers[i]] = i                           // add key-value pair to dictionary
        }
        
        return []                                       // if no solution found, return empty array
    }
}

