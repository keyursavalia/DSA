import Foundation

/// LC #15 - 3Sum
/// Two Pointers with Sorting Approach - 03/02/2026
/// Time: O(n²) | Space: O(1) extra (excluding output)
/// took 21ms and 22.28 MB

class Solution {
    
    /// function will take:
    ///     array "nums" of type Int
    ///
    /// function will return:
    ///     array of integer triplets (each triplet is an array of 3 Ints)
    ///     where each triplet sums to 0, with no duplicate triplets
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        var list: [Int] = nums.sorted()                                     /// i'm using sorted list of numbers for
        var solution: [[Int]] = []                                          /// better navigation using 2-pointers
        
        for i in 0..<list.count-2 {                                         // we're looking for 3 numbers: if loop goes to the very end of the array, it won't have enough numbers to make a triplet

            if i > 0 && list[i] == list[i-1] {                              // skipping duplicates: if the previous 'i' and current 'i' are same -> skip the iteration
                continue
            }

            var left: Int = i + 1
            var right: Int = list.count - 1

            while left < right {

                var sum = list[i] + list[left] + list[right]

                if sum == 0 {                                               // check if we have a valid solution

                    solution.append([list[i], list[left], list[right]])
                    left += 1
                    right -= 1

                    while left < right && list[left] == list[left - 1] {    /// new_left (after-incrementation) == old_left ?
                        left += 1                                           /// skip the new_left by incrementing again
                    }
                    
                    while left < right && list[right] == list[right + 1] {  /// new_right (after-decrementation) == old_right ?
                        right -= 1                                          /// skip the new_right by decrementing again
                    }

                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }

            }

        }

        return solution
    }
}
