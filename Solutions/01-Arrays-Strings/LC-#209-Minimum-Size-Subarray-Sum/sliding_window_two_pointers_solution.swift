import Foundation

/// LC #209 - Minimum Size Subarray Sum
/// Sliding Window (Two Pointers) Approach - 03/08/2026
/// Time: O(n) | Space: O(1)
/// took 0 ms and 20.76 MB

class Solution {
    
    /// function will take:
    ///     target sum "target" of type Int
    ///     array "nums" of type Int (positive integers)
    ///
    /// function will return:
    ///     minimal length of a contiguous subarray with sum >= target
    ///     or 0 if no such subarray exists
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        
        var left = 0
        var right = 0
        var sum = 0
        var length = nums.count + 1
        var currWindowSize = 0
        
        while right < nums.count {
            sum += nums[right]
            
            while sum >= target {
                currWindowSize = right - left + 1
                
                if currWindowSize < length {
                    length = currWindowSize
                }
                
                sum -= nums[left]
                left += 1
            }
            
            right += 1
        }
        
        return length == nums.count + 1 ? 0 : length
    }
}

