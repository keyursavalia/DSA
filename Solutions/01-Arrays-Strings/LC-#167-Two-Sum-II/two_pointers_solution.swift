import Foundation

/// LC #167 - Two Sum II
/// Optimized Approach using 2 Pointers - 02/28/2026
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
        
        // initialize pointers
        var leftPointer: Int = 0
        var rightPointer: Int = numbers.count - 1
        
        while leftPointer < rightPointer {                              // true until they they cross each other
            
            let sum = numbers[leftPointer] + numbers[rightPointer]      // keep track of current sum
            
            if sum == target {                                          /// if sum is equal to target:
                return [leftPointer + 1, rightPointer + 1]              ///         return indices incremented by 1
            } else if sum < target {                                    /// if sum is less than target:
                leftPointer += 1                                        ///         increment left pointer
            } else {                                                    /// if sum is greater than target:
                rightPointer -= 1                                       ///         decrement right pointer
            }
            
        }
        
        return []                                                       // if no solution found, return empty array
    }
}


