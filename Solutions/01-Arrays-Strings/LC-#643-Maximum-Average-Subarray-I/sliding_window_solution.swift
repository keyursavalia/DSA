import Foundation

/// LC #643 - Maximum Average Subarray I
/// Sliding Window (Fixed Size) Approach - 03/08/2026
/// Time: O(n) | Space: O(1)
/// took 0 ms and 21.99 MB

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int
    ///     window size "k" of type Int
    ///
    /// function will return:
    ///     maximum average value of any contiguous subarray of length k
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        
        var currentSum = 0
        
        // calculate sum of first window of size k
        for i in 0..<k {
            currentSum += nums[i]
        }
        
        var highestSum = currentSum
        
        // slide the window across the array
        for i in k..<nums.count {
            currentSum += nums[i] - nums[i - k]     // add the new element and subtract that is now outside the window
            if currentSum > highestSum {
                highestSum = currentSum
            }
        }
        
        return Double(highestSum) / Double(k)
    }
}

