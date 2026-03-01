import Foundation

/// LC #167 - Two Sum II
/// Optimized Approach using HashMap - 02/28/2026
/// Time: O(n) | Space: O(1)

class Solution {
    
    /// function will take:
    ///     array "numbers" of type Int
    ///     target value of type Int
    ///
    /// function will return:
    ///     array of type Int (2 indexes) if solution found,
    ///     else an empty array
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var leftPointer: Int = 0
        var rightPointer: Int = numbers.count - 1
        
        while leftPointer < rightPointer {
            
            let sum = numbers[leftPointer] + numbers[rightPointer]
            
            if sum == target {
                return [leftPointer + 1, rightPointer + 1]
            } else if sum < target {
                leftPointer += 1
            } else {
                rightPointer -= 1
            }
            
        }
        
        return []                                       // if no solution found, return empty array
    }
}


