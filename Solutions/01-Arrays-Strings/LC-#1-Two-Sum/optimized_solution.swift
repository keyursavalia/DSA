import Foundation

/// LC #1 - Two Sum
/// Optimized Approach - 02/28/2026
/// Time: O(n) | Space: O(n)

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int
    ///     target value of type Int
    ///
    /// function will return:
    ///     array of type Int (2 indexes) if solution found,
    ///     else an empty array
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict: [Int: Int] = [:]                      // initialize empty dictionary (hash-map)
        /// dict will have:
        ///     element of the array = "key"
        ///     index of the element = "value"
        
        for i in 0..<nums.count {
            // get "2nd-key" by subtracting "current-key" from target
            let complement = target - nums[i]
            // "2nd-key" exists in dict ? store it's value (index) in j : continue
            if let j = dict[complement] {
                return [j, i]
            }
            dict[nums[i]] = i                           // add key-value pair to dictionary
        }
        
        return []                                       // if no solution found, return empty array
    }
}
