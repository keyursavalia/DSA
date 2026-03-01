import Foundation

/// LC #167 - Two Sum II
/// Brute Force Approach - 02/28/2026
/// Time: O(n²) | Space: O(1)

class Solution {
    
    /// function will take:
    ///     array "numbers" of type Int
    ///     target value of type Int
    ///
    /// function will return:
    ///     array of type Int (2 indexes) if solution found,
    ///     else an empty array
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {

        for i in 0..<numbers.count {                        // 1st loop starting from 0 till end of array
            for j in (i+1)..<numbers.count {                // 2nd loop starting from 1 till end of array
                if numbers[i] + numbers[j] == target {      // check if addition of elements at i & j equals target
                    return [i+1, j+1]                       // if yes, return an array of both indices (incremented by 1)
                }
            }
        }

        return []                                           // if no solution found, return empty array
    }
}
