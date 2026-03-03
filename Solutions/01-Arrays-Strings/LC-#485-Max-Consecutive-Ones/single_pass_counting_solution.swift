import Foundation

/// LC #485 - Max Consecutive Ones
/// Single Pass Counting Approach - 03/02/2026
/// Time: O(n) | Space: O(1)
/// took 0 ms and 20.40 MB

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int (binary array of 0s and 1s)
    ///
    /// function will return:
    ///     maximum number of consecutive 1s in the array
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var maxCount = 0
        var currentCount = 0
        
        for num in nums {
            if num == 1 {
                currentCount += 1
                maxCount = max(maxCount, currentCount)
            } else {
                currentCount = 0
            }
        }
        
        return maxCount
    }
}

