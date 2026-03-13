import Foundation

/// LC #53 - Maximum Subarray
/// Divide and Conquer Approach - 03/12/2026
/// Time: O(n log n) | Space: O(log n)
/// took 4 ms and 21.24 MB

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int
    ///
    /// function will return:
    ///     maximum sum of any contiguous subarray
    func maxSubArray(_ nums: [Int]) -> Int {
        
        // Edge case: if the array is empty, return 0.
        guard !nums.isEmpty else { return 0 }
        return maximumSubarray(nums, 0, nums.count - 1)
    }

    /// Recursive Divide and Conquer function.
    private func maximumSubarray(_ nums: [Int], _ low: Int, _ high: Int) -> Int {
        
        // Base Case: If there is only one element, it is the maximum sum.
        if low == high {
            return nums[low]
        }
        
        // Divide: Find the midpoint.
        let mid = (low + high) / 2
        
        // Conquer: Recursively find the max sum in the left and right halves.
        let leftSum = maximumSubarray(nums, low, mid)
        let rightSum = maximumSubarray(nums, mid + 1, high)
        
        // Combine: Find the max sum that crosses the midpoint.
        let crossSum = maximumSubcrossing(nums, low, mid, high)
        
        // Return the largest of the three possible cases.
        return max(leftSum, max(rightSum, crossSum))
    }

    /// Helper function to find the maximum sum crossing the midpoint.
    private func maximumSubcrossing(_ nums: [Int], _ low: Int, _ mid: Int, _ high: Int) -> Int {
        
        var sum = 0
        
        // 1. Expand left from mid.
        // We use 'through: low' to ensure the loop includes the index at 'low'.
        var leftMax = Int.min
        for i in stride(from: mid, through: low, by: -1) {
            sum += nums[i]
            if sum > leftMax {
                leftMax = sum
            }
        }
        
        sum = 0
        
        // 2. Expand right from mid + 1.
        // 'through: high' ensures we include the final element, avoiding arithmetic overflow.
        var rightMax = Int.min
        for j in (mid + 1)...high {
            sum += nums[j]
            if sum > rightMax {
                rightMax = sum
            }
        }
        
        // 3. Return the combined crossing sum.
        // Because low <= mid and mid < high, both loops are guaranteed to run,
        // ensuring leftMax and rightMax are no longer Int.min.
        return leftMax + rightMax
    }
}

