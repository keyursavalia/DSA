import Foundation

/// LC #1 - Two Sum
/// Brute Force Approach - 02/28/2026
/// Time: O(n²) | Space: O(1)

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int
    ///     target value of type Int
    ///
    /// function will return:
    ///     array of type Int (2 indexes) if solution found,
    ///     else an empty array
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count {                       // 1st loop starting from 0 till end of array
            for j in (i+1)..<nums.count {               // 2nd loop starting from 1 till end of array
                if nums[i] + nums[j] == target {        // check if addition of elements at i & j equals target
                    return [i, j]                       // if yes, return an array of both indices
                }
            }
        }
        
        return []                                       // if no solution found, return empty array
    }
}
