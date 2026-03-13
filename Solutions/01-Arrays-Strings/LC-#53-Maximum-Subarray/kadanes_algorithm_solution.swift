import Foundation

/// LC #53 - Maximum Subarray
/// Kadane’s Algorithm (Dynamic Programming) - 03/12/2026
/// Time: O(n) | Space: O(1)
/// took 0 ms and 21.11 MB

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int
    ///
    /// function will return:
    ///     maximum sum of any contiguous subarray
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var currentMax: Int = nums[0]
        var globalMax: Int = nums[0]

        for i in 1..<nums.count {
            currentMax = max(nums[i], currentMax + nums[i])
            globalMax = max(currentMax, globalMax)
        }

        return globalMax
    }
}

