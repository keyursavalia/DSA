import Foundation

/// LC #238 - Product of Array Except Self
/// Prefix & Suffix Products Approach - 03/02/2026
/// Time: O(n) | Space: O(1)
/// took 0 ms and 24.96 MB

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int
    ///
    /// function will return:
    ///     array "answer" where answer[i] is the product of all elements of nums except nums[i]
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        let n: Int = nums.count
        var result = Array(repeating: 1, count: n)

        var leftProduct: Int = 1                            // leftProduct at index 0 will 1
        for i in 0..<n {
            result[i] = leftProduct                         // set leftProduct
            leftProduct *= nums[i]                          // calculate leftProduct
        }

        var rightProduct: Int = 1                           // rightProduct at index n-1 will 1
        for i in stride(from: n - 1, through: 0, by: -1) {
            result[i] *= rightProduct                       // set rightProduct
            rightProduct *= nums[i]                         // calculate rightProduct
        }
        
        return result
    }
}

